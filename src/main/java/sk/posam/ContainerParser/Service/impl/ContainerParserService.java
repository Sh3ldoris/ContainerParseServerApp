package sk.posam.ContainerParser.Service.impl;

import eu.europa.esig.dss.asic.cades.validation.ASiCContainerWithCAdESValidator;
import eu.europa.esig.dss.asic.xades.validation.ASiCContainerWithXAdESValidator;
import eu.europa.esig.dss.diagnostic.CertificateWrapper;
import eu.europa.esig.dss.diagnostic.DiagnosticData;
import eu.europa.esig.dss.enumerations.DigestAlgorithm;
import eu.europa.esig.dss.enumerations.SignatureLevel;
import eu.europa.esig.dss.model.DSSDocument;
import eu.europa.esig.dss.model.DSSException;
import eu.europa.esig.dss.model.InMemoryDocument;
import eu.europa.esig.dss.simplereport.jaxb.XmlSignature;
import eu.europa.esig.dss.validation.AdvancedSignature;
import eu.europa.esig.dss.validation.CertificateVerifier;
import eu.europa.esig.dss.validation.CommonCertificateVerifier;
import eu.europa.esig.dss.validation.SignedDocumentValidator;
import eu.europa.esig.dss.validation.executor.ValidationLevel;
import eu.europa.esig.dss.validation.reports.Reports;
import eu.europa.esig.validationreport.jaxb.SignerInformationType;
import eu.europa.esig.validationreport.jaxb.ValidationReportType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sk.posam.ContainerParser.Controller.DTO.FileDTO;
import sk.posam.ContainerParser.Error.ContainerParserException;
import sk.posam.ContainerParser.Model.*;
import sk.posam.ContainerParser.Service.DocumentService;
import sk.posam.ContainerParser.Service.IContainerParserService;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

@Service
public class ContainerParserService implements IContainerParserService {
    private static final Logger LOGGER = LoggerFactory.getLogger(ContainerParserService.class);

    @Autowired
    private DocumentService documentService;

    /**
     * Parse signed file and generate report
     * @param containerDto signature container
     * @return parsing report with information
     */
    @Override()
    public ContainerParsingReport parse(FileDTO containerDto) {

        if (!isFormatRight(containerDto.getName())) {
            LOGGER.error("The file type is not supported! Cannot continue : " + containerDto.getName());
            throw new IllegalArgumentException("Bad file type!");
        }

        //Vytvori sa dokument potrebny pre rozlozenie kontajneru
        DSSDocument container = new InMemoryDocument(documentService.fromBase64(containerDto.getBase64Content()));
        container.setName(containerDto.getName());

        //Vytvori sa report pre zapis informacii
        ContainerParsingReport containerReport = new ContainerParsingReport();
        SignedDocumentValidator cAdESValidator;
        SignedDocumentValidator xAdESValidator;

        try {
            //Vytvoria sa validatory pre typy podpisov pre kontajner
            cAdESValidator = new ASiCContainerWithCAdESValidator(container);
            xAdESValidator = new ASiCContainerWithXAdESValidator(container);
        } catch (DSSException e) {
            LOGGER.error("Cannot create document validator:" + e.toString());
            throw new ContainerParserException("Cannot create document validator:" + e.toString());
        }

        containerReport.addInformation(parseWithValidator(cAdESValidator));
        containerReport.addInformation(parseWithValidator(xAdESValidator));
        containerReport.setContainerName(container.getName());


        return containerReport;
    }

    private ContainerParsingReport parseWithValidator(SignedDocumentValidator validator) {

        //Vytvori sa report pre zapis informacii
        ContainerParsingReport containerReport = new ContainerParsingReport();
        SignedDocumentValidator documentValidator;

        documentValidator = validator;

        documentValidator.setCertificateVerifier(getCertificateVerifier());
        documentValidator.setValidationLevel(ValidationLevel.ARCHIVAL_DATA);
        documentValidator.setEnableEtsiValidationReport(true);
        documentValidator.setEnableEtsiValidationReport(true);

        // Getting all signatures from container
        // Getting all docs from container parsed to model document class
        List<Signature> signatureList = this.getAllSignatures(documentValidator);
        List<OriginalDocument> originalDocuments = this.getAllOriginalDocuments(documentValidator, signatureList);
        containerReport.setOriginalDocuments(originalDocuments);

        // Generate reports from docs
        Reports reports = documentValidator.validateDocument();
        ValidationReportType etsiReport = reports.getEtsiValidationReportJaxb();

        // Set info into Container report
        containerReport.setValidationDate(reports.getSimpleReport().getValidationTime());
        containerReport.setSignaturesCount(reports.getSimpleReport().getSignaturesCount());
        containerReport.setValidSignaturesCount(reports.getSimpleReport().getValidSignaturesCount());

        // Set attributes for each signature in container
        for (int i = 0; i < signatureList.size(); i++) {
            XmlSignature signature = reports.getSimpleReport().getJaxbModel().getSignature().get(i); //Signature info
            String signedBy = reports.getSimpleReport().getJaxbModel().getSignature().get(i).getSignedBy();

            SignerInformationType signerInfo = etsiReport.getSignatureValidationReport().get(i).getSignerInformation();
            if (signerInfo != null) {
                signatureList.get(i).setName(signerInfo.getSigner());
            }

            signatureList.get(i).setSigningDate(signature.getSigningTime());

            SignatureLevel signatureLevel = signature.getSignatureFormat();
            if (signatureLevel != null) {
                signatureList.get(i).setFormat(signatureLevel.name());
            }

            signatureList.get(i).setErrors(signature.getErrors());
            signatureList.get(i).setWarns(signature.getWarnings());
            signatureList.get(i).setCertIssuerName(this.getIssuerName(reports.getDiagnosticData(), signedBy));
            signatureList.get(i).setCertSubjectName(this.getSubjectName(reports.getDiagnosticData(), signedBy));

            List<SignatureScopeItem> scopeItems = getAllSignatureScopeItems(signature);
            signatureList.get(i).setScopeItems(scopeItems);
        }

        containerReport.setSignatures(signatureList);
        return containerReport;
    }

    /**
     * @param data
     * @param signatureKey
     * @return Name of the issuer of the certificate
     */
    private String getIssuerName(DiagnosticData data,String signatureKey) {
        CertificateWrapper cw = data.getUsedCertificateById(signatureKey);
        if (cw == null)
            return null;
        return cw.getCertificateIssuerDN();
    }

    /**
     * @param data
     * @param signatureKey
     * @return Name of the certificate subject
     */
    private String getSubjectName(DiagnosticData data,String signatureKey) {
        CertificateWrapper cw = data.getUsedCertificateById(signatureKey);
        if (cw == null)
            return null;
        return cw.getCertificateDN();
    }

    /**
     * Searches for signatures in wrapped in Model class
     * @param containerValidator
     * @return
     */
    private List<Signature> getAllSignatures(SignedDocumentValidator containerValidator) {
        ArrayList<Signature> signatures  = new ArrayList<>();
        List<AdvancedSignature> l = containerValidator.getSignatures();
        containerValidator.getSignatures().forEach(dssSignature -> {
            signatures.add(new Signature(dssSignature.getId()));
        });

        return signatures;
    }

    /**
     * Searches for the signature scope on files
     * @param signature
     * @return
     */
    private List<SignatureScopeItem> getAllSignatureScopeItems(XmlSignature signature) {
        ArrayList<SignatureScopeItem> scopeItems = new ArrayList<>();
        
        signature.getSignatureScope().forEach(xmlSignatureScope -> {
            scopeItems.add(new SignatureScopeItem(xmlSignatureScope.getName(), xmlSignatureScope.getScope()));
        });
        return scopeItems;
    }

    /**
     * Searches for the list of the original docs wrapped
     * in the Model classes with information
     * @param containerValidator
     * @param signatures
     * @return
     */
    private List<OriginalDocument> getAllOriginalDocuments(SignedDocumentValidator containerValidator, List<Signature> signatures) {
        ArrayList<OriginalDocument> originalDocs = new ArrayList<>();
        List<DSSDocument> originalDDSDocuments = this.getAllSignedDSSDocuments(containerValidator, signatures);

        originalDDSDocuments.forEach(dssDocument -> {
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            try {
                dssDocument.writeTo(baos);
            } catch (IOException e) {
                LOGGER.error("Cannot create base64 from document: " + e.getMessage());
            }

            originalDocs.add(
                    new OriginalDocument(
                        dssDocument.getName(),
                        dssDocument.getMimeType().getMimeTypeString(),
                        this.documentService.toBase64(baos.toByteArray())
                    )
            );
        });

        return originalDocs;
    }

    /**
     * Searches for the list of the original docs wrapped
     * in the library classes
     * @param containerValidator
     * @param signatures
     * @return
     */
    private List<DSSDocument> getAllSignedDSSDocuments(SignedDocumentValidator containerValidator, List<Signature> signatures) {
        ArrayList<DSSDocument> docs = new ArrayList<>();

        for (int i = 0; i < signatures.size(); i++) {
            containerValidator.getOriginalDocuments(signatures.get(i).getId()).forEach(doc -> {
                if (!docs.contains(doc)) {
                    docs.add(doc);
                }
            });
        }

        return docs;
    }

    /**
     * Checks file formats
     * @param fileName
     * @return
     */
    private boolean isFormatRight(String fileName) {
        String extension = getFileExtension(fileName).toLowerCase();
        return extension.equals("asice") || extension.equals("asics") || extension.equals("sce") || extension.equals("scs");
    }

    private String getFileExtension(String name) {
        if (name == null)
            return "";
        int dotIndex = name.lastIndexOf('.');
        return (dotIndex == -1) ? "" : name.substring(dotIndex + 1);
    }

    private CertificateVerifier getCertificateVerifier() {
        CommonCertificateVerifier certVer = new CommonCertificateVerifier();
        certVer.setDefaultDigestAlgorithm(DigestAlgorithm.SHA512);
        certVer.setCheckRevocationForUntrustedChains(false);

        return certVer;
    }
}
