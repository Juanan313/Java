package NumRomanos;

public class NumerosRomanosRegex {

    public static boolean checkNumeroRomano(String numRomano) {
        String validRomanNumber = "^(M{0,3})(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$";
        return numRomano.matches(validRomanNumber);
    }

    public static int obtenerValorDecimal(String numRomano) {

        return 0;

    }

}