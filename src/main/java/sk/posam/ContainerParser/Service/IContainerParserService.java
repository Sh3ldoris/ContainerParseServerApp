package sk.posam.ContainerParser.Service;

import sk.posam.ContainerParser.Controller.DTO.FileDTO;
import sk.posam.ContainerParser.Model.ContainerParsingReport;

public interface IContainerParserService {

    /**
     * Parse signed file and generate report
     * @param containerDto signature container
     * @return parsing report with information
     */
    ContainerParsingReport parse(FileDTO containerDto);
}
