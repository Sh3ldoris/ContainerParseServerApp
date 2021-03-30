package sk.posam.ContainerParser.Error;

/**
 * Exception sluzi na detekovanie chyby pri parsovani podpisoveho kontajnera
 */
public class ContainerParserException extends RuntimeException {
    public ContainerParserException() {
        super();
    }
    public ContainerParserException(String message) {
        super(message);
    }
}
