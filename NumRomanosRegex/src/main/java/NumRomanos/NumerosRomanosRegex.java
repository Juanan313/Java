package NumRomanos;


public class NumerosRomanosRegex {

    public static boolean checkNumeroRomano(String numRomano) {
        String validRomanNumber = "^(M{0,3})(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$";
        return numRomano.matches(validRomanNumber);
    }

    public static int obtenerDecimal(String numRomano) {
        NumRomanos numero = NumRomanos.valueOf(numRomano);
        return numero.getValorDecimal();
    }

    public static int obtenerValorDecimal(String numRomano) {

        if (!checkNumeroRomano(numRomano)) {
            return 0;
        }

        int resultado = 0;

        String regexSumatorio = "^(M{0,3})(D?C{0,3})(L?X{0,3})(V?I{0,3})$";
        int n = numRomano.length();
        for (int i=0;i < n; i++) {
            
            String romanChar = "" + numRomano.charAt(i);
            String checker;
            try {
                checker = numRomano.substring(i, i+2);
            } catch (Exception e) {
                checker = numRomano.substring(i, i+1);
            }
            
            if (checker.matches(regexSumatorio)) {

                resultado += obtenerDecimal(romanChar);
                
            } else {

                resultado -= obtenerDecimal(romanChar);
            }
        }
         return resultado;
         
    }

    public static void main(String[] args) {
        String numRomano = "CXLIV";

        int resultado = obtenerValorDecimal(numRomano);
        System.out.println(resultado);
        ;
    }

}