package br.com.sgionline.controller;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.sgionline.annotation.BreadcrumbCheck;

@Resource
public class HomeController {

	public HomeController() {
		// TODO Auto-generated constructor stub
	}
	
	@Path("/")
	@BreadcrumbCheck(label="home.index", level=0)
	public void index(){}
}
