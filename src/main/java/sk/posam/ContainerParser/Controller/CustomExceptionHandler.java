package sk.posam.ContainerParser.Controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import sk.posam.ContainerParser.Controller.DTO.ExceptionDTO;
import sk.posam.ContainerParser.Error.ContainerParserException;

@RestControllerAdvice
public class CustomExceptionHandler {

    @ExceptionHandler(ContainerParserException.class)
    public ResponseEntity<ExceptionDTO> handleContainerParserException(ContainerParserException e) {
        ExceptionDTO fault = new ExceptionDTO(e.getMessage());
        return new ResponseEntity<>(fault, HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @ExceptionHandler(IllegalArgumentException.class)
    public ResponseEntity<ExceptionDTO> handleIllegalArgumentException(IllegalArgumentException e) {
        ExceptionDTO fault = new ExceptionDTO(e.getMessage());
        return new ResponseEntity<>(fault, HttpStatus.UNSUPPORTED_MEDIA_TYPE);
    }
}
