package sk.posam.ContainerParser.Model;

public class OriginalDocument {
    private String name;
    private String type;
    private String base64Content;

    public OriginalDocument(String name, String type, String base64Content) {
        this.name = name;
        this.type = type;
        this.base64Content = base64Content;
    }

    public OriginalDocument() {
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBase64Content() {
        return base64Content;
    }

    public void setBase64Content(String base64Content) {
        this.base64Content = base64Content;
    }
}
