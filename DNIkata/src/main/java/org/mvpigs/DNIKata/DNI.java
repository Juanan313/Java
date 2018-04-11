package org.mvpigs.DNIKata;

import java.util.regex.Matcher;

public class DNI {

    private String dni;
    private TablaAsignacion tablaAsignacion = new TablaAsignacion();
    char[] tablaAsiganacionLetra = TablaAsignacion.tablaAsignacion;

    public DNI() {

    }

    public DNI(String dni) {
        this.dni = dni;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public TablaAsignacion getTablaAsignacion() {
        return tablaAsignacion;
    }

    public boolean isLenghtCorrect() {

        if (dni.length() != 9) {
            return false;
        } else {
            return true;
        }
    }

    public char getDniLetter() {
        return dni.charAt(8);
    }

    public int getDniDigits() {

        String digits = "";
        for (int i = 0, n = 8; i < n; i++) {
            char character = dni.charAt(i);
            digits += character;
        }
        return strDigitsToInts(digits);
    }

    public int strDigitsToInts(String digits) {

        int numbersDni = Integer.parseInt(digits);
        return numbersDni;
    }

    // Función innecesaria 
    public int sumDigitsDni(int digits) {

        int sum = 0;
        while (digits > 0) {
            sum = sum + digits % 10;
            digits = digits / 10;
        }
        return sum;
    }

    public char obtenerLetra() {
        return tablaAsignacion.calcularLetra(getDniDigits());
    }

    public boolean letraIsCorrect() {
        return getDniLetter() == obtenerLetra();
    }

    public boolean isDni() {
        if (dni.charAt(0) == 'X' || dni.charAt(0) == 'Y' || dni.charAt(0) == 'Z') {
            return false;
        } else {
            return true;
        }
    }

    public boolean checkRegexDNI() {

        if (isDni()) {
            RegexMatcher dniRegex = new RegexMatcher("[0-9]{8}[TRWAGMYFPDXBNJZSQVHLCKE]");
            Matcher matcher = dniRegex.getMatcher(dni);
            return matcher.find();
    } else {
            RegexMatcher dniRegex = new RegexMatcher("[YXZ][0-9]{7}[TRWAGMYFPDXBNJZSQVHLCKE]");
            Matcher matcher = dniRegex.getMatcher(dni);
            return matcher.find();
        }
    }   
    

    public boolean comprobarDNI() {
        return isLenghtCorrect() && letraIsCorrect();
    }

}