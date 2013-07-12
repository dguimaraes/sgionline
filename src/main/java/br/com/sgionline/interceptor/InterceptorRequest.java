package br.com.sgionline.interceptor;

import javax.servlet.http.HttpServletRequest;

import br.com.caelum.vraptor.InterceptionException;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.core.InterceptorStack;
import br.com.caelum.vraptor.interceptor.Interceptor;
import br.com.caelum.vraptor.ioc.RequestScoped;
import br.com.caelum.vraptor.resource.ResourceMethod;
import br.com.sgionline.component.interfaces.Breadcrumb;


@Intercepts
@RequestScoped
public class InterceptorRequest implements Interceptor {

	private final HttpServletRequest request;
	private final Breadcrumb breadcrumb;
	
	public InterceptorRequest(HttpServletRequest request, Breadcrumb breadcrumb) {
		this.request = request;
		this.breadcrumb = breadcrumb;
	}
	
	@Override
	public void intercept(InterceptorStack stack, ResourceMethod method,
			Object resourceInstance) throws InterceptionException {
		// TODO Auto-generated method stub
		
		breadcrumb.gerenciaBreadcrumb(method, request);
		
		stack.next(method, resourceInstance); // continua a execução
	}

	@Override
	public boolean accepts(ResourceMethod method) {
		return breadcrumb.validaBreadcrumb(method);
	}

}
