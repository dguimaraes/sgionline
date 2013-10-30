<head>
	<title><fmt:message key="lista" /> de <fmt:message key="usuarios" /></title>
</head>
<body>
	<div class="span5">
		<a style="margin-bottom: 20px;" href="${pageContext.request.contextPath}/usuarios/new" 
				class="btn btn-primary ico-plus fLeft" tabindex="3" role="button"><fmt:message key="nova" /> <fmt:message key="usuario" /></a>		
	</div>
	
	<div class="span16">
		<table class="tableList">
			<thead>
				<tr>
					<th><fmt:message>nome</fmt:message></th>
					<th><fmt:message>login</fmt:message></th>
					<th colspan="3"><fmt:message>acoes</fmt:message></th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${usuarioList}" var="usuario">
				<tr>
					<td>${usuario.nome}</td>
					<td>${usuario.login}</td>
					<td><a href="${pageContext.request.contextPath}/usuarios/${usuario.id}" 
					class="ico-list" data-toggle="modal"><fmt:message key="detalhar" /></a></td>
					<td><a href="${pageContext.request.contextPath}/usuarios/${usuario.id}/edit"
					class="ico-edit" data-toggle="modal"><fmt:message key="editar" /></a></td>
					<td>
						<form style="margin-bottom: 0px;" id="deleteUsuario${usuario.id}" action="${pageContext.request.contextPath}/usuarios/${usuario.id}" method="post">
							<input type="hidden" name="_method" value="delete"/>
							<a href="#" class="ico-trash btn_delete" onclick="if (confirm('<fmt:message key="voce_deseja_excluir" /> o usuario ${usuario.login}?')){ $('#deleteUsuario${usuario.id}').submit();}"><fmt:message key="excluir" /></a>
						</form>
					</td>
					
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div> 
</body>