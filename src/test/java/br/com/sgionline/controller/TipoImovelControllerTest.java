package br.com.sgionline.controller;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;

public class TipoImovelControllerTest {

	@Test public void fakeTest() {
		assertNotNull("put something real.", new TipoImovelController(null, null, null));
 	}
}
