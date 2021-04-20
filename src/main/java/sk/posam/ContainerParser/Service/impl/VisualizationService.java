package sk.posam.ContainerParser.Service.impl;

import org.apache.camel.util.xml.StringSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import sk.posam.ContainerParser.Model.OriginalDocument;
import sk.posam.ContainerParser.Model.VisualizationsFile;
import sk.posam.ContainerParser.Service.DocumentService;
import sk.posam.ContainerParser.Service.IVisualizationService;
import sk.posam.ContainerParser.Service.IXSDSchemaService;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.*;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

@Service
public class VisualizationService implements IVisualizationService {

    private static final Logger LOGGER = LoggerFactory.getLogger(VisualizationService.class);
    private static DocumentBuilderFactory factory;

    @Autowired
    private DocumentService documentService;
    @Autowired
    private IXSDSchemaService schemaService;


    @Override()
    public List<VisualizationsFile> visualize(List<OriginalDocument> documents) {
        List<VisualizationsFile> visualizations = new ArrayList<>();
        
        for (OriginalDocument doc : documents) {
            if (!doc.getType().equals("text/xml"))
                continue;

            String xmlToVisualize = "";
            String identifier = "";
            String html = "";

            String originalXml = new String(documentService.fromBase64(doc.getBase64Content()), StandardCharsets.UTF_8);
            identifier = this.getIdentifierFromXML(originalXml);

            if (!identifier.equals("")) {
                xmlToVisualize = this.getXmlDataToVisualize(originalXml);
            }

            if (!xmlToVisualize.equals("")) {
                html = this.toHtml(identifier, xmlToVisualize);
            }

            if (!html.equals("")) {
                visualizations.add(new VisualizationsFile(documentService.toBase64(html.getBytes()), doc.getName()));
            }

        }

        return visualizations;
    }

    private String toHtml(String xsdSchemaId,String xmlSource) {
        String html = "";
        java.io.File xsdSchema = this.schemaService.getSchema(xsdSchemaId);

        if (xsdSchema == null) {
            LOGGER.warn("Cannot find xsd schema for identifier: " + xsdSchemaId);
            return "";
        }

        try {
            TransformerFactory factory = TransformerFactory.newInstance();
            Source xslt = new StreamSource(xsdSchema);
            Transformer transformer = factory.newTransformer(xslt);

            StringSource transformationSource = new StringSource(xmlSource);
            StringWriter writer = new StringWriter();
            StreamResult result = new StreamResult(writer);

            transformer.transform(transformationSource, result);

            html = writer.toString();
        } catch (Exception e) {
            LOGGER.warn("Could not create Html!");
        }
        return html;
    }

    /**
     * Finds part of XML that is right to visualize
     * @param xml
     * @return
     */
    private String getXmlDataToVisualize(String xml) {
        if (xml.equals(""))
            return "";

        //Odstranenie prebytocnich medzier  a riadkov (robilo mi to problem pri transformacii)
        xml = xml.replaceAll("\\n", "");
        xml = xml.replaceAll("\\r", "");

        StringBuilder subXml = new StringBuilder();
        try {
            DocumentBuilderFactory factory = getFactory();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document document = builder.parse(new InputSource(new StringReader(xml)));
            Node xmlData = document.getElementsByTagName("xdc:XMLData").item(0).getFirstChild();

            StringWriter buf = new StringWriter();
            Transformer xform = TransformerFactory.newInstance().newTransformer();
            xform.transform(new DOMSource(xmlData), new StreamResult(buf));
            subXml.append(buf);
        } catch (Exception e) {
            LOGGER.warn("Cannot get sub part xml! " + e.getMessage());
        }
        return subXml.toString();
    }

    private static DocumentBuilderFactory getFactory() {
        if (factory == null){
            factory = DocumentBuilderFactory
                    .newInstance();
            factory.setNamespaceAware(true);
        }
        return factory;
    }

    /**
     * Finds ID in XML for transformation
     * @param xml
     * @return
     */
    private String getIdentifierFromXML(String xml) {
        if (xml.equals(""))
            return "";

        StringBuilder identifier = new StringBuilder();
        try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document document = builder.parse(new InputSource(new StringReader(xml)));
            NodeList elements = document.getElementsByTagName("xdc:XMLData");
            Node node = elements.item(0);

            if (node.getNodeType() == Node.ELEMENT_NODE) {
                identifier.append(((Element) node).getAttribute("Identifier"));
            }
        } catch (Exception e) {
            LOGGER.warn("Cannot get identifier from xml! " + e.getMessage());
        }
        return identifier.toString();
    }
}
