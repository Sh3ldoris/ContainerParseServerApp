package sk.posam.ContainerParser.Controller;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
import sk.posam.ContainerParser.Controller.DTO.FileDTO;
import sk.posam.ContainerParser.Controller.DTO.ParsedResponseDTO;
import sk.posam.ContainerParser.Model.ContainerParsingReport;
import sk.posam.ContainerParser.Model.OriginalDocument;
import sk.posam.ContainerParser.Model.VisualizationsFile;
import sk.posam.ContainerParser.Service.IContainerParserService;
import sk.posam.ContainerParser.Service.IVisualizationService;

import java.util.List;
import java.util.stream.Collectors;


@RestController
@RequestMapping("api")
public class ParserController {

    @Autowired
    private IContainerParserService containerService;
    @Autowired
    private ModelMapper modelMapper;
    @Autowired
    private IVisualizationService visualizationService;

    @PostMapping("/parse")
    public ResponseEntity<ParsedResponseDTO> parseContainer(@RequestBody FileDTO containerDTO){
        ContainerParsingReport par =  containerService.parse(containerDTO);
        return new ResponseEntity<>(this.modelMapper.map(par, ParsedResponseDTO.class), HttpStatus.OK);
    }

    @PostMapping("/visualize")
    public ResponseEntity<List<VisualizationsFile>> getVisualizations(@RequestBody List<FileDTO> documents) {
        List<OriginalDocument> docsToVisualize = documents
                .stream()
                .map(user -> modelMapper.map(user, OriginalDocument.class))
                .collect(Collectors.toList());

        return new ResponseEntity<>(this.visualizationService.visualize(docsToVisualize), HttpStatus.OK);
    }

}
