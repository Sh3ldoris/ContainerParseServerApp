package sk.posam.ContainerParser.Service.impl;

import org.springframework.stereotype.Service;
import sk.posam.ContainerParser.Service.IXSDSchemaService;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

@Service
public class XSDSchemaService implements IXSDSchemaService {

    private Map<String, File> schemaMap;

    public XSDSchemaService() {
        this.schemaMap = new HashMap<String, File>();
        this.schemaMap.put("http://data.gov.sk/doc/eform/DCOM_eDemokracia_ZiadostOVydanieHlasovaciehoPreukazuFO_sk/2.2",
                new File("C:/Users/lanya/Downloads/DCOM_eDemokracia_ZiadostOVydanieHlasovaciehoPreukazuFO_sk/Content/ZiadostOVydanieHlasovaciehoPreukazuFO.html.xslt"));
        this.schemaMap.put("http://data.gov.sk/doc/eform//45736359.DolozkaOVykonaniAutorizacieFunkciouPristupovehoMiesta.sk/4.0",
                new File("C:/Users/lanya/Downloads/45736359.DolozkaOVykonaniAutorizacieFunkciouPristupovehoMiesta.sk/Content/DolozkaOVykonaniAutorizacieFunkciouPristupovehoMiesta.html.xslt"));
    }

    @Override()
    public File getSchema(String identifier) {
        return  this.schemaMap.get(identifier);
    }
}
