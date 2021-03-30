package sk.posam.ContainerParser.Model;

public class VisualizationsFile {
    private String base64Html;
    private String base64Pdf;
    private String name;

    public VisualizationsFile(String base64Html, String name) {
        this.base64Html = base64Html;
        this.name = name;
    }

    //PDF sa uz negeneruje na serveri ale na klientovi
    public VisualizationsFile(String base64Html, String pdf,String name) {
        this.base64Html = base64Html;
        this.base64Pdf = pdf;
        this.name = name;
    }

    public String getBase64Html() {
        return base64Html;
    }

    public void setBase64Html(String base64Html) {
        this.base64Html = base64Html;
    }

    public String getBase64Pdf() {
        return base64Pdf;
    }

    public void setBase64Pdf(String base64Pdf) {
        this.base64Pdf = base64Pdf;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
