package NumRomanos.ejerciciosPruebaRegex;

public class PruebaRegex {

    public static void main(String[] args) {
        // Prepare a regular expression to represent a pattern
        String regex = ".@.";
        // Try matching many strings against the regular expression
        PruebaRegex.matchIt("a@k", regex);
        PruebaRegex.matchIt("webmaster@jdojo.com", regex);
        PruebaRegex.matchIt("r@j", regex);
        PruebaRegex.matchIt("a%N", regex);
        PruebaRegex.matchIt(".@.", regex);
    }

    public static void matchIt(String str, String regex) {
        // Test for pattern match
        if (str.matches(regex)) {
            System.out.println(str + " matches the regex " + regex);
        } else {
            System.out.println(str + " does not match the regex " + regex);
        }
    }

}