<head>
<title><fmt:message key="tipoImovel" /> <fmt:message key="detalhe" /> </title>
</head>
<body>

	<!--      form utilizado para excluir o item          -->
	<form style="margin-bottom: 0px;" id="deleteTipoImovel${tipoImovel.id}" action="${pageContext.request.contextPath}/tipoImoveis/${tipoImovel.id}" method="post">
		<input type="hidden" name="_method" value="delete"/>
	</form>
	
	<div class="span5">
		<a href="${pageContext.request.contextPath}/tipoImoveis" 
				class="btn btn-primary ico-left-open fLeft" tabindex="3" role="button"><fmt:message key="voltar" /></a>		
	</div>
	
	<div class="span16">
		<table class="tableList">
			<tbody>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="id" /> da <fmt:message key="tipoImovel" />: </b>${tipoImovel.id}</td>
					<td class="span3 txtRight">
						<a href="${pageContext.request.contextPath}/tipoImoveis/${tipoImovel.id}/edit"
						title="<fmt:message key="editar" /> <fmt:message key="tipoImovel" />" class="ico-edit"
						data-toggle="modal" data-target="#editartipoImovel" tabindex="3"><fmt:message key="editar" /></a>
						<a href="#" class="ico-trash btn_delete" onclick="if (confirm('<fmt:message key="voce_deseja_excluir" />?')){ $('#deleteTipoImovel${tipoImovel.id}').submit();}"><fmt:message key="excluir" /></a>
					</td>
				</tr>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="nome" />: </b> ${tipoImovel.nome} </td>
					<td class="span3"></td>
				</tr>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="descricao" />: </b>${tipoImovel.descricao}</td>
					<td class="span3"></td>
				</tr>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="sigla" />: </b>${tipoImovel.sigla}</td>
					<td class="span3"></td>
				</tr>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="temImovel" />: </b>
						<c:choose>
	  						<c:when test="${tipoImovel.temImovel}"><fmt:message key="sim"/></c:when>
	  						<c:otherwise><fmt:message key="nao"/></c:otherwise>
						</c:choose>
					</td>
						
					<td class="span3"></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>