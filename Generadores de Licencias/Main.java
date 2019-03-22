
import java.security.NoSuchAlgorithmException;
import  java.security.*;
import javax.crypto.*;
import java.util.UUID;
import  java.util.Base64;
public class Main {

    public static void main(String[] args) throws NoSuchAlgorithmException {

        KeyGenerator keyGen = KeyGenerator.getInstance("AES");
        SecureRandom random = new SecureRandom();
        keyGen.init(256);
        SecretKey secretKey = keyGen.generateKey();
        byte llave[]= secretKey.getEncoded();
        String encodedKey = Base64.getEncoder().encodeToString(secretKey.getEncoded());
        Base64.getDecoder().decode(encodedKey);

        System.out.println( encodedKey);
        String st="";
        for (byte a :llave)
        {
            String b= String.format("%02X", a);
            st +=b;

        }
        System.out.println( st);
        String uniqueID = UUID.randomUUID().toString();
        System.out.println( uniqueID);
        System.out.println( keyGen.getAlgorithm());
        System.out.println(secretKey.toString());
    }
}
