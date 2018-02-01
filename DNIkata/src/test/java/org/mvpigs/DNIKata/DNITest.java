package org.mvpigs.DNIKata;

import static org.junit.Assert.assertEquals;

import org.junit.Before;
import org.junit.Test;

public class DNITest {

    String dniCorrecto = "";
    String dniIncorrecto = "";
    String digits = "";
    int digitsInt = 0;

    @Before
    public void beforeTest() { 
    String dniCorrecto = "45123698X";
    String dniIncorrecto = "4123698X";
    String digits = DNI.getDniDigits(dniCorrecto);
    int digitsInt = DNI.strDigitsToInts(digits);
    }
    @Test
    public void isLenghtCorrectTest () {

        assertEquals(true, DNI.isLenghtCorrect(dniCorrecto));
        assertEquals(false, DNI.isLenghtCorrect(dniIncorrecto));
    }
    @Test
    public void getDniDigitsTest() {

        assertEquals("45123698", DNI.getDniDigits(dniCorrecto));
        
    }
    @Test
    public void strDigitsToIntsTest() {
        assertEquals(45123698, DNI.strDigitsToInts(digits));
        
    }
    @Test
    public void sumDigitsDni() {
        int num = 123;
        assertEquals(6, DNI.sumDigitsDni(num));
    }
}