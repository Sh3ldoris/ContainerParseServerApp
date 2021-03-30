package sk.posam.ContainerParser.Service.impl;

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

import static com.google.common.base.Preconditions.checkNotNull;

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
        SignedDocumentValidator documentValidator;

        try {
            documentValidator = getDocValidator(container);
        } catch (DSSException e) {
            LOGGER.error("Cannot create document validator:" + e.toString());
            throw new ContainerParserException("Cannot create document validator:" + e.toString());
        }

        // Getting all signatures from container
        // Getting all docs from container parsed to model document class
        List<Signature> signatureList = this.getAllSignatures(documentValidator);
        List<OriginalDocument> originalDocuments = this.getAllOriginalDocuments(documentValidator, signatureList);

        //V kontajneri je zahrnuty tiez aj nejaky doc pre podpisy...ale nie je relevantny pre usera
        List<OriginalDocument> docsToDelete = new ArrayList<>();
        originalDocuments.forEach(originalDocument -> {
            if (!originalDocument.getType().equals("text/xml") && !originalDocument.getType().equals("application/pdf")) {
                docsToDelete.add(originalDocument);
            }
        });
        originalDocuments.removeAll(docsToDelete);
        containerReport.setOriginalDocuments(originalDocuments);

        // Generate reports from docs
        Reports reports = documentValidator.validateDocument();
        ValidationReportType etsiReport = reports.getEtsiValidationReportJaxb();

        // Set info into Container report
        containerReport.setContainerName(container.getName());
        containerReport.setValidationDate(reports.getSimpleReport().getValidationTime());
        containerReport.setSignaturesCount(reports.getSimpleReport().getSignaturesCount());
        containerReport.setValidSignaturesCount(reports.getSimpleReport().getValidSignaturesCount());

        // Set attributes for each signature in container
        for (int i = 0; i < signatureList.size(); i++) {
            XmlSignature signature = reports.getSimpleReport().getJaxbModel().getSignature().get(i);
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

        // Set simple and detailed report XML documents
        containerReport.setSimpleReport(documentService.toBase64(reports.getXmlSimpleReport().getBytes()));
        containerReport.setDetailedReport(documentService.toBase64(reports.getXmlDetailedReport().getBytes()));
        // reports.getDiagnosticData().getUsedCertificateByIdNullSafe()
        return containerReport;
    }

    private String getIssuerName(DiagnosticData data,String signatureKey) {
        CertificateWrapper cw = data.getUsedCertificateById(signatureKey);
        if (cw == null)
            return null;
        return cw.getCertificateIssuerDN();
    }

    private String getSubjectName(DiagnosticData data,String signatureKey) {
        CertificateWrapper cw = data.getUsedCertificateById(signatureKey);
        if (cw == null)
            return null;
        return cw.getCertificateDN();
    }

    private List<Signature> getAllSignatures(SignedDocumentValidator containerValidator) {
        ArrayList<Signature> signatures  = new ArrayList<>();
        List<AdvancedSignature> l = containerValidator.getSignatures();
        containerValidator.getSignatures().forEach(dssSignature -> {
            signatures.add(new Signature(dssSignature.getId()));
        });

        return signatures;
    }
    
    private List<SignatureScopeItem> getAllSignatureScopeItems(XmlSignature signature) {
        ArrayList<SignatureScopeItem> scopeItems = new ArrayList<>();
        
        signature.getSignatureScope().forEach(xmlSignatureScope -> {
            scopeItems.add(new SignatureScopeItem(xmlSignatureScope.getName(), xmlSignatureScope.getScope()));
        });
        return scopeItems;
    }

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

    private List<DSSDocument> getAllSignedDSSDocuments(SignedDocumentValidator containerValidator, List<Signature> signatures) {
        ArrayList<DSSDocument> docs = new ArrayList<>();

        for (int i = 0; i < signatures.size(); i++) {
            docs.addAll(containerValidator.getOriginalDocuments(signatures.get(i).getId()));
        }

        return docs;
    }

    private boolean isFormatRight(String fileName) {
        String extension = getFileExtension(fileName);
        return extension.equals("asice") || extension.equals("asics") || extension.equals("sce") || extension.equals("scs");
    }

    public static String getFileExtension(String name) {
        checkNotNull(name);
        int dotIndex = name.lastIndexOf('.');
        return (dotIndex == -1) ? "" : name.substring(dotIndex + 1);
    }

    private SignedDocumentValidator getDocValidator(DSSDocument signedDocument) {

        SignedDocumentValidator docV = new ASiCContainerWithXAdESValidator(signedDocument);
        docV.setCertificateVerifier(getCertificateVerifier());

        docV.setValidationLevel(ValidationLevel.ARCHIVAL_DATA);
        docV.setEnableEtsiValidationReport(true);
        docV.setEnableEtsiValidationReport(true);
        return docV;
    }

    private CertificateVerifier getCertificateVerifier() {
        //Nastavenia cert verifieru ...da sa nastavit aj z local files nacitavanie certs alebo aj s custom url
        CommonCertificateVerifier certVer = new CommonCertificateVerifier();
        // certVer.setDataLoader(new IgnoreDataLoader());
        // certVer.setTrustedCertSource(trustStoreSource());
        certVer.setDefaultDigestAlgorithm(DigestAlgorithm.SHA512);
        certVer.setCheckRevocationForUntrustedChains(false);
        return certVer;
    }
}
