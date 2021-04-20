package sk.posam.ContainerParser.Model;

public class VisualizationsFile {
    private String base64Html;
    private String name;

    public VisualizationsFile(String base64Html, String name) {
        this.base64Html = base64Html;
        this.name = name;
    }

    public String getBase64Html() {
        return base64Html;
    }

    public void setBase64Html(String base64Html) {
        this.base64Html = base64Html;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
