package br.com.sgionline.session;

import java.util.Iterator;
import java.util.LinkedList;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.SessionScoped;
import br.com.sgionline.bean.BreadcrumbBean;

@Component
@SessionScoped
public class BreadcrumbSession {

	private LinkedList<BreadcrumbBean> listaUrls = new LinkedList<BreadcrumbBean>();

	public LinkedList<BreadcrumbBean> getListaUrls() {
		return listaUrls;
	}

	public void setListaUrls(LinkedList<BreadcrumbBean> listaUrls) {
		this.listaUrls = listaUrls;
	}
	
	public void addItem(BreadcrumbBean breadcrumbBean){
		
		boolean remove = false;
		
		Iterator<BreadcrumbBean> it = listaUrls.iterator();
		while (it.hasNext()) {
			BreadcrumbBean bean = (BreadcrumbBean) it.next();
			
			if(bean.equals(breadcrumbBean)){
				remove = true;
			}
			
			if(remove || (breadcrumbBean.getLevel() <= bean.getLevel()))
				it.remove();
			
		}
		
		listaUrls.offerLast(breadcrumbBean);

	}
}
