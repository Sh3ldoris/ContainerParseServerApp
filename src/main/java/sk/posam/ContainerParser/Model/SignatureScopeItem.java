package sk.posam.ContainerParser.Model;

public class SignatureScopeItem {
    private String name;
    private String scope;

    public SignatureScopeItem(String name, String scope) {
        this.name = name;
        this.scope = scope;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getScope() {
        return scope;
    }

    public void setScope(String scope) {
        this.scope = scope;
    }
}
