<head>
	<title><fmt:message key="imovel.index" /></title>
</head>
<body>
	<div class="span5">
		<a style="margin-bottom: 20px;" href="${pageContext.request.contextPath}/imoveis/new" 
				class="btn btn-primary ico-plus fLeft" tabindex="3" role="button"><fmt:message key="imovel.newImovel" /></a>		
	</div>
	
	<div class="span16">
		<table class="tableList">
			<thead>
				<tr>
					<th><fmt:message>nome</fmt:message></th>
					<th><fmt:message>descricao</fmt:message></th>
					<th><fmt:message>tipoImovel</fmt:message></th>
					<th colspan="3"><fmt:message>acoes</fmt:message></th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${imovelList}" var="imovel">
				<tr>
					<td>${imovel.nome}</td>
					<td>${imovel.descricao}</td>
					<td>${imovel.tipoImovel}</td>
					<td><a href="${pageContext.request.contextPath}/imoveis/${imovel.id}" 
					class="ico-list" data-toggle="modal"><fmt:message key="detalhar" /></a></td>
					<td><a href="${pageContext.request.contextPath}/imoveis/${imovel.id}/edit"
					class="ico-edit" data-toggle="modal"><fmt:message key="editar" /></a></td>
					<td>
						<form style="margin-bottom: 0px;" id="deleteImovel${imovel.id}" action="${pageContext.request.contextPath}/imoveis/${imovel.id}" method="post">
							<input type="hidden" name="_method" value="delete"/>
							<a href="#" class="ico-trash btn_delete" onclick="if (confirm('<fmt:message key="voce_deseja_excluir" /> o imovel ${imovel.id} - ${imovel.nome}?')){ $('#deleteImovel${imovel.id}').submit();}"><fmt:message key="excluir" /></a>
						</form>
					</td>
					
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div> 
</body>