package br.com.sgionline.component;

import javax.servlet.http.HttpServletRequest;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.resource.ResourceMethod;
import br.com.sgionline.annotation.BreadcrumbCheck;
import br.com.sgionline.bean.BreadcrumbBean;
import br.com.sgionline.component.interfaces.Breadcrumb;
import br.com.sgionline.session.BreadcrumbSession;

@Component
public class BreadcrumbImpl implements Breadcrumb {

	private final BreadcrumbSession breadcrumbSession;
	
	public BreadcrumbImpl(BreadcrumbSession breadcrumbSession) {
		super();
		this.breadcrumbSession = breadcrumbSession;
	}
	
	public void gerenciaBreadcrumb(ResourceMethod method, HttpServletRequest request){
		BreadcrumbBean breadcrumbBean = new BreadcrumbBean(method.getMethod().getAnnotation(BreadcrumbCheck.class).label(), 
				request.getRequestURI(), method.getMethod().getAnnotation(BreadcrumbCheck.class).level());
		breadcrumbSession.addItem(breadcrumbBean);
	}
	
	public boolean validaBreadcrumb(ResourceMethod method){
		return method.getMethod().isAnnotationPresent(BreadcrumbCheck.class);
	}

}
