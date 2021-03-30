package sk.posam.ContainerParser.Model;

import java.util.Date;
import java.util.List;

public class Signature {
    private String id;
    private String name;
    private Date signingDate;
    private String format;
    private List<SignatureScopeItem> scopeItems;
    private List<String> errors;
    private List<String> warns;
    private String certIssuerName;
    private String certSubjectName;

    public Signature(String id) {
        this.id = id;
    }

    public Signature(String name, Date signingDate, String format, List<String> errors, List<String> warns) {
        this.name = name;
        this.signingDate = signingDate;
        this.format = format;
        this.errors = errors;
        this.warns = warns;
    }

    public String getCertIssuerName() {
        return certIssuerName;
    }

    public void setCertIssuerName(String certIssuerName) {
        this.certIssuerName = certIssuerName;
    }

    public String getCertSubjectName() {
        return certSubjectName;
    }

    public void setCertSubjectName(String certSubjectName) {
        this.certSubjectName = certSubjectName;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getSigningDate() {
        return signingDate;
    }

    public void setSigningDate(Date signingDate) {
        this.signingDate = signingDate;
    }

    public String getFormat() {
        return format;
    }

    public void setFormat(String format) {
        this.format = format;
    }

    public List<SignatureScopeItem> getScopeItems() {
        return scopeItems;
    }

    public void setScopeItems(List<SignatureScopeItem> scopeItems) {
        this.scopeItems = scopeItems;
    }

    public List<String> getErrors() {
        return errors;
    }

    public void setErrors(List<String> errors) {
        this.errors = errors;
    }

    public List<String> getWarns() {
        return warns;
    }

    public void setWarns(List<String> warns) {
        this.warns = warns;
    }
}
