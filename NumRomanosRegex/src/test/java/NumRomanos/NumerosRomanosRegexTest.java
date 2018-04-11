package NumRomanos;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

public class NumerosRomanosRegexTest {
    
    @Test
    public void checkNumeroRomanoTest() {
        String[] numerosRomanos = { "XIV", "MDCCXLIX", "DCCXLIX", "LXXIX", "XLIX", "CLV" };
        String[] invalidNumerosRomanos = { "XIIV", "IMDCCXLIX", "TDCCXLIX", "2", "mil", "CILIVI" };
        for (String num:numerosRomanos) {
            assertTrue(NumerosRomanosRegex.checkNumeroRomano(num));
        }
        for (String num:invalidNumerosRomanos) {
            assertFalse(NumerosRomanosRegex.checkNumeroRomano(num));
        }
    }

    @Test
    public void obtenerDecimalTest() {
        final String[] romanNumerals = {"M","D","C","L","X","V","I"};
        final int[] valorDecimal = {1000, 500, 100, 50, 10, 5, 1};
        int n = romanNumerals.length;
        for (int i=0; i > n; i++)
        assertEquals(NumerosRomanosRegex.obtenerDecimal(romanNumerals[i]), valorDecimal[i]);
    }
    
    @Test
    public void obtenerValorDecimalTest() {
        String[] numerosRomanos = {"M","D","C","L","X","V","I","III","IV","XLV"};
        int[] valorDecimal = {1000, 500, 100, 50, 10, 5, 1,3,4,45};
        int n = numerosRomanos.length;
        for ( int i = 0; i < n; i++) {

            assertEquals(NumerosRomanosRegex.obtenerValorDecimal(numerosRomanos[i]),valorDecimal[i]);

        }

    }
}   