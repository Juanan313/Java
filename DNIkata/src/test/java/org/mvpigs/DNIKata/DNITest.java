package org.mvpigs.DNIKata;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.Before;
import org.junit.Test;

public class DNITest {

    static DNI dniCorrecto;
    static DNI dniIncorrecto;
    static DNI nieCorrecto;

    @Before
    public void beforeClass() {
        dniCorrecto = new DNI("45123698K");
        dniIncorrecto = new DNI("4123698X");
        nieCorrecto = new DNI("X9946833T");
    }
    @Test
    public void isLenghtCorrectTest () {

        assertEquals(true, dniCorrecto.isLenghtCorrect());
        assertEquals(false, dniIncorrecto.isLenghtCorrect());
    }
    @Test
    public void getDniDigitsTest() {

        assertEquals(45123698, dniCorrecto.getDniDigits());

    }

    @Test
    public void getDniLetterTest() {
        assertEquals('K', dniCorrecto.getDniLetter());
    }
    @Test
    public void obtenerLetraTest() {
        System.out.println(dniCorrecto.obtenerLetra());
    }

    @Test
    public void heckRegexDNI() {
        assertTrue(dniCorrecto.checkRegexDNI());
        assertTrue(nieCorrecto.checkRegexDNI());

    }
}