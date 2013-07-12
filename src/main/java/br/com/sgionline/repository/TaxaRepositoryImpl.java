package br.com.sgionline.repository;

import javax.persistence.EntityManager;

import br.com.caelum.vraptor.ioc.Component;
import br.com.sgionline.model.Taxa;

@Component
public class TaxaRepositoryImpl
    extends Repository<Taxa, Long>
    implements TaxaRepository {

	TaxaRepositoryImpl(EntityManager entityManager) {
		super(entityManager);
	}
	
}
