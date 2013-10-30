<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html class="js flexbox postmessage websqldatabase indexeddb history draganddrop backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface localstorage sessionstorage webworkers svg webkit forceClass">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<title><decorator:title default="Vraptor Scaffold" /></title>
	<link rel="stylesheet" type="text/css"
		href="http://developer.locaweb.com.br/assets/1.1.8/bootstrap.css" />
	<link rel="stylesheet" type="text/css"
		href="http://developer.locaweb.com.br/assets/1.1.8/locastyle.css" />
	<!-- link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/application.css"/> -->
	<decorator:head />
	</head>
	<body>
		<header class="headerPrincipal">
			<div class="limite">
				<h1 class="serviceName">
					<a href="${pageContext.request.contextPath}">Sistema de
						Gerenciamento de Imoveis - Online</a>
				</h1>
			</div>
		
			<menu id="menuPrincipal">
				<ul>
					<li class="selected"><a
						href="${pageContext.request.contextPath}">Página inicial</a></li>
					<li class="parent"><a href="#" tabindex="2" role="menuitem">Cadastros</a>
						<ul aria-expanded="false" aria-hidden="true">
							<li><a href="${pageContext.request.contextPath}/taxas"
								tabindex="2" role="menuitem"><fmt:message key="taxas" /></a></li>
							<li><a href="#" tabindex="2" role="menuitem"><fmt:message key="imoveis" /></a></li>
							<li><a href="#" tabindex="2" role="menuitem"><fmt:message key="usuarios" /></a></li>
							<li><a href="#" tabindex="2" role="menuitem"><fmt:message key="locatario" /></a></li>
						</ul></li>
					<li><a href="#settings">Meios de pagamento</a></li>
					<li class="btMenu"><a href="#">Ambiente de testes</a></li>
				</ul>
			</menu>
		</header>
		<div id="main">
			<div class="limite">
	
				<ul class="breadcrumb">
					<c:if test="${not empty breadcrumbSession.listaUrls}">
						<c:forEach items="${breadcrumbSession.listaUrls}" var="breadcrumb">
							<li><a href="${breadcrumb.url}"><fmt:message key="${breadcrumb.label}" /></a></li>
						</c:forEach>
					</c:if>
				</ul>
				
				<div class="row">
					<div class="span16">
						<c:if test="${not empty errors}">
							<div class="alert alert-error" role="alert" tabindex="-1">
							<strong><fmt:message key="notificacao" /></strong><br />
							<c:forEach items="${errors}" var="error">
								${error.category} - ${error.message}<br />
							</c:forEach>
							</div>
						</c:if>
					</div>
					<decorator:body />
				</div>
				<!-- FIM ROW -->
	
			</div>
			<!-- FIM LIMITE -->
	
			<footer id="footer" role="contentinfo">
				<div class="footerTop">
					<div class="limit">
						<nav>
						<h6>Atendimento</h6>
						<ul>
							<li class="ico-helpDesk"><a href="#">HelpDesk</a></li>
							<li class="ico-chat"><a href="#">Chat</a></li>
							<li class="ico-phone"><a href="#">Telefone</a></li>
						</ul>
						<a href="#" class="lnkArrow lnkArrowWhite fright">Ver todas as
							formas de atendimento</a> </nav>
					</div>
				</div>
				<div class="subfooter">
					<div class="limit">
						<span class="lastAccess"><strong>�ltimo acesso:</strong>
							7/8/2011 22:35:49 <strong>IP:</strong> 201.87.65.217 </span>
		
						<p class="copyRight fright">Copyright © 1997-2011 Locaweb
							Serviços de Internet S/A.</p>
					</div>
				</div>
			</footer>
	
		</div>
	
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/javascripts/jquery.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/javascripts/application.js"></script>
	
	</body>
</html>
