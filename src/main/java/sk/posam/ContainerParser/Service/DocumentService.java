package sk.posam.ContainerParser.Service;

import org.springframework.stereotype.Service;
import org.apache.commons.codec.binary.Base64;

@Service
public class DocumentService {

    public String toBase64(byte[] binaryData) {
        return new String(Base64.encodeBase64(binaryData));
    }

    public byte[] fromBase64(String base) {
        return Base64.decodeBase64(base);
    }
}
