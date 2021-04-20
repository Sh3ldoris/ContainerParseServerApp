package sk.posam.ContainerParser.Service;

import sk.posam.ContainerParser.Model.OriginalDocument;
import sk.posam.ContainerParser.Model.VisualizationsFile;

import java.util.List;

public interface IVisualizationService {

    /**
     * @param documents vstupny dokument xml
     * @return List vizualizacii ktore bolo mozne vykonat
     */
    List<VisualizationsFile> visualize(List<OriginalDocument> documents);
}
