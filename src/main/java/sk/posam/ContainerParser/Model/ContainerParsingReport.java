package sk.posam.ContainerParser.Model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ContainerParsingReport {
    private List<OriginalDocument> originalDocuments;
    private String containerName;
    private Date validationDate;
    private int signaturesCount;
    private int validSignaturesCount;
    private List<Signature> signatures;
    private String simpleReport;
    private String detailedReport;

    public ContainerParsingReport() {
        this.containerName = "";
        this.signaturesCount = 0;
        this.validSignaturesCount = 0;
        this.simpleReport = "";
        this.detailedReport = "";
        this.originalDocuments = new ArrayList<>();
        this.signatures = new ArrayList<>();
    }

    public List<OriginalDocument> getOriginalDocuments() {
        return originalDocuments;
    }

    public void setOriginalDocuments(List<OriginalDocument> originalDocuments) {
        if (originalDocuments != null && originalDocuments.size() > 0)
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
        if (signatures != null && signatures.size() > 0)
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

    public void addInformation(ContainerParsingReport report) {
        if (report.originalDocuments != null && report.originalDocuments.size() > 0)
            this.originalDocuments.addAll(report.originalDocuments);

        if (report.signatures != null && report.signatures.size() > 0)
            this.signatures.addAll(report.signatures);

        if (!report.containerName.equals(""))
            this.containerName = report.containerName;

        this.validationDate = report.validationDate;

        if (report.signaturesCount > 0)
            this.signaturesCount += report.signaturesCount;

        if (report.validSignaturesCount > 0)
            this.validSignaturesCount += report.validSignaturesCount;

        if (!report.simpleReport.equals(""))
            this.simpleReport = report.simpleReport;

        if (!report.detailedReport.equals(""))
            this.detailedReport = report.detailedReport;
    }
}
