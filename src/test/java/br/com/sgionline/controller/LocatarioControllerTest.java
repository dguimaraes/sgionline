package br.com.sgionline.controller;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;

public class LocatarioControllerTest {

	@Test public void fakeTest() {
		assertNotNull("put something real.", new LocatarioController(null, null, null));
 	}
}
