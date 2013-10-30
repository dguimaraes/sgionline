package br.com.sgionline.repository;

import javax.persistence.EntityManager;

import br.com.caelum.vraptor.ioc.Component;
import br.com.sgionline.model.Imovel;

@Component
public class ImovelRepositoryImpl
    extends Repository<Imovel, Long>
    implements ImovelRepository {

	ImovelRepositoryImpl(EntityManager entityManager) {
		super(entityManager);
	}
}
