package br.com.sgionline.repository;

import javax.persistence.EntityManager;

import br.com.caelum.vraptor.ioc.Component;
import br.com.sgionline.model.Usuario;

@Component
public class UsuarioRepositoryImpl
    extends Repository<Usuario, Long>
    implements UsuarioRepository {

	UsuarioRepositoryImpl(EntityManager entityManager) {
		super(entityManager);
	}
}
