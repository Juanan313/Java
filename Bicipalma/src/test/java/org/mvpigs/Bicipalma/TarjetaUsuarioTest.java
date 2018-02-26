package org.mvpigs.Bicipalma;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

/**
 * TarjetaUsuarioTest
 */
public class TarjetaUsuarioTest {

    TarjetaUsuario tarjetaUsuario = new TarjetaUsuario();
    TarjetaUsuario tarjetaUsuario2 = new TarjetaUsuario("1245678");
    TarjetaUsuario tarjetaUsuario3 = new TarjetaUsuario("622530103", true);

    @Test
    public void constructorTest() {

        // Comprueba que la variable activada se instancia correctamente
        assertEquals(tarjetaUsuario.isActivada(), false);
        assertEquals(tarjetaUsuario2.isActivada(), false);
        assertEquals(tarjetaUsuario3.isActivada(), true);

        // Comprueba que la variable id se instancia correctamente

        assertEquals(tarjetaUsuario.getId(), "");
        assertEquals(tarjetaUsuario2.getId(),"1245678");
        assertEquals(tarjetaUsuario3.getId(),"622530103");
        
    }
    
}