package br.com.sgionline.repository;

import javax.persistence.EntityManager;

import br.com.caelum.vraptor.ioc.Component;
import br.com.sgionline.model.Locatario;

@Component
public class LocatarioRepositoryImpl
    extends Repository<Locatario, Long>
    implements LocatarioRepository {

	LocatarioRepositoryImpl(EntityManager entityManager) {
		super(entityManager);
	}
}
