package br.com.sgionline.repository;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;

public class ImovelRepositoryImplTest {

    @Test public void fakeTest() {
  		assertNotNull("put something real.", new ImovelRepositoryImpl(null));
  	}
}

