package sk.posam.ContainerParser.Controller.DTO;

import sk.posam.ContainerParser.Model.OriginalDocument;
import sk.posam.ContainerParser.Model.Signature;

import java.util.Date;
import java.util.List;

public class ParsedResponseDTO {
    List<OriginalDocument> originalDocuments;
    String containerName;
    Date validationDate;
    int signaturesCount;
    int validSignaturesCount;
    List<Signature> signatures;
    String simpleReport;
    String detailedReport;

    public List<OriginalDocument> getOriginalDocuments() {
        return originalDocuments;
    }

    public void setOriginalDocuments(List<OriginalDocument> originalDocuments) {
        this.originalDocuments = originalDocuments;
    }

    public String getContainerName() {
        return containerName;
    }

    public void setContainerName(String containerName) {
        this.containerName = containerName;
    }

    public Date getValidationDate() {
        return validationDate;
    }

    public void setValidationDate(Date validationDate) {
        this.validationDate = validationDate;
    }

    public int getSignaturesCount() {
        return signaturesCount;
    }

    public void setSignaturesCount(int signaturesCount) {
        this.signaturesCount = signaturesCount;
    }

    public int getValidSignaturesCount() {
        return validSignaturesCount;
    }

    public void setValidSignaturesCount(int validSignaturesCount) {
        this.validSignaturesCount = validSignaturesCount;
    }

    public List<Signature> getSignatures() {
        return signatures;
    }

    public void setSignatures(List<Signature> signatures) {
        this.signatures = signatures;
    }

    public String getSimpleReport() {
        return simpleReport;
    }

    public void setSimpleReport(String simpleReport) {
        this.simpleReport = simpleReport;
    }

    public String getDetailedReport() {
        return detailedReport;
    }

    public void setDetailedReport(String detailedReport) {
        this.detailedReport = detailedReport;
    }
}
