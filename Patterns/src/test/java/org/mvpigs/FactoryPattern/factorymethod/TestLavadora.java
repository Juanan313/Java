package org.mvpigs.FactoryPattern.factorymethod;

import static org.junit.Assert.*;

import org.junit.Test;

public class TestLavadora {

	@Test
	public void test_carga_frontal() {
		
		Lavadora lavadora = new LavadoraCargaFrontal();
		lavadora.ponerMandos();
		lavadora.ponerTambor();
		
		assertEquals("frontal", lavadora.tipoCarga);
		assertTrue(lavadora.tieneMandos);
		assertTrue(lavadora.tieneTambor);
	}

	@Test
	public void test_carga_superior() {
		
		Lavadora lavadora = new LavadoraCargaSuperior();
		lavadora.ponerMandos();
		lavadora.ponerTambor();
		
		assertEquals("superior", lavadora.tipoCarga);
		assertTrue(lavadora.tieneMandos);
		assertTrue(lavadora.tieneTambor);
	}

	@Test
	public void testFactory() {
		LavadoraFactory factoria = new LavadoraFrontalFactory();

		assertNotNull(factoria);
		assertTrue(factoria instanceof LavadoraFactory);
	}

	public void testCargaFrontalFactoria() {
		
		LavadoraFactory factoria = new LavadoraFrontalFactory();

		Lavadora lavadora = factoria.crearLavadora();

		assertEquals("frontal", lavadora.tipoCarga);
		assertTrue(lavadora.tieneMandos);
		assertTrue(lavadora.tieneTambor);

	}

	@Test
	public void testCargaSuperiorFactory() {
		
		// Lavadora lavadora = new LavadoraCargaSuperior();
		// lavadora.ponerMandos();
		// lavadora.ponerTambor();

		LavadoraFactory factoria = new LavadoraSuperiorFactory();
		assertNotNull(factoria);

		Lavadora lavadora = factoria.crearLavadora();
		assertNotNull(lavadora);
		
		assertEquals("superior", lavadora.tipoCarga);
		assertTrue(lavadora.tieneMandos);
		assertTrue(lavadora.tieneTambor);
	}

}
