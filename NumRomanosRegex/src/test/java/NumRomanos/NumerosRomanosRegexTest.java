package NumRomanos;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.junit.Test;
import java.util.Arrays;

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
}   