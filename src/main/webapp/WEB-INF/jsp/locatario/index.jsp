<head>
	<title><fmt:message key="locatario.index" /></title>
</head>
<body>
	<div class="span5">
		<a style="margin-bottom: 20px;" href="${pageContext.request.contextPath}/locatarios/new" 
				class="btn btn-primary ico-plus fLeft" tabindex="3" role="button"><fmt:message key="locatario.newLocatario" /></a>		
	</div>
	
	<div class="span16">
		<table class="tableList">
			<thead>
				<tr>
					<th><fmt:message>nome</fmt:message></th>
					<th><fmt:message>cpf</fmt:message></th>
					<th><fmt:message>rg</fmt:message></th>
					<th><fmt:message>telefone</fmt:message></th>
					<th colspan="3"><fmt:message>acoes</fmt:message></th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${locatarioList}" var="locatario">
				<tr>
					<td>${locatario.nome}</td>
					<td>${locatario.cpf}</td>
					<td>${locatario.rg}</td>
					<td>${locatario.telefone}</td>
					<td><a href="${pageContext.request.contextPath}/locatarios/${locatario.id}" 
					class="ico-list" data-toggle="modal"><fmt:message key="detalhar" /></a></td>
					<td><a href="${pageContext.request.contextPath}/locatarios/${locatario.id}/edit"
					class="ico-edit" data-toggle="modal"><fmt:message key="editar" /></a></td>
					<td>
						<form style="margin-bottom: 0px;" id="deleteLocatario${locatario.id}" action="${pageContext.request.contextPath}/locatarios/${locatario.id}" method="post">
							<input type="hidden" name="_method" value="delete"/>
							<a href="#" class="ico-trash btn_delete" onclick="if (confirm('<fmt:message key="voce_deseja_excluir" /> o locatario ${locatario.id} - ${locatario.nome}?')){ $('#deleteLocatario${locatario.id}').submit();}"><fmt:message key="excluir" /></a>
						</form>
					</td>
					
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div> 
</body>