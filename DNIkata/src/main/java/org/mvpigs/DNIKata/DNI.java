package org.mvpigs.DNIKata;

public class DNI {

    char [] tablaAsiganacionLetra = TablaAsignacion.tablaAsignacion;

    static boolean isLenghtCorrect(String dni) {

        if (dni.length() != 9) {
            return false;
        } else {
        return true;
    }   
}

    static String getDniDigits(String dni) {

        String digits = "";
        for (int i = 0, n = 8; i < n; i++) {
            char character = dni.charAt(i);
            digits+= character;
        }
            return digits;
        }
    
    static int strDigitsToInts(String digits) {

        int numbersDni = Integer.parseInt(digits);
        return numbersDni;
    }

    static int sumDigitsDni (int digits) {
        
        int sum = 0;
        while (digits > 0) {
            sum = sum + digits%10;
            digits = digits/10;
        }
        return sum;
    }
    }
