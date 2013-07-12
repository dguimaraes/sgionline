package br.com.sgionline.controller;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;

public class TaxaControllerTest {

	@Test public void fakeTest() {
		assertNotNull("put something real.", new TaxaController(null, null, null));
 	}
}
