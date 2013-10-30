package br.com.sgionline.repository;

import javax.persistence.EntityManager;

import br.com.caelum.vraptor.ioc.Component;
import br.com.sgionline.model.TipoImovel;

@Component
public class TipoImovelRepositoryImpl
    extends Repository<TipoImovel, Long>
    implements TipoImovelRepository {

	TipoImovelRepositoryImpl(EntityManager entityManager) {
		super(entityManager);
	}
}
