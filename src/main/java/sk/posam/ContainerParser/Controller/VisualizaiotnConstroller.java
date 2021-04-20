package sk.posam.ContainerParser.Controller;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import sk.posam.ContainerParser.Controller.DTO.FileDTO;
import sk.posam.ContainerParser.Model.OriginalDocument;
import sk.posam.ContainerParser.Model.VisualizationsFile;
import sk.posam.ContainerParser.Service.IVisualizationService;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("api")
public class VisualizaiotnConstroller {

    @Autowired
    private ModelMapper modelMapper;
    @Autowired
    private IVisualizationService visualizationService;

    @PostMapping("/visualize")
    public ResponseEntity<List<VisualizationsFile>> getVisualizations(@RequestBody List<FileDTO> documents) {
        List<OriginalDocument> docsToVisualize = documents
                .stream()
                .map(user -> modelMapper.map(user, OriginalDocument.class))
                .collect(Collectors.toList());

        return new ResponseEntity<>(this.visualizationService.visualize(docsToVisualize), HttpStatus.OK);
    }
}
