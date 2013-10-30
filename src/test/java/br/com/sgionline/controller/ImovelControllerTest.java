package br.com.sgionline.controller;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;

public class ImovelControllerTest {

	@Test public void fakeTest() {
		assertNotNull("put something real.", new ImovelController(null, null, null, null, null));
 	}
}
