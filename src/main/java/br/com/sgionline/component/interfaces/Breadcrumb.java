package br.com.sgionline.component.interfaces;

import javax.servlet.http.HttpServletRequest;

import br.com.caelum.vraptor.resource.ResourceMethod;

public interface Breadcrumb {

	void gerenciaBreadcrumb(ResourceMethod method, HttpServletRequest request);

	boolean validaBreadcrumb(ResourceMethod method);
}
