<head>
	<title><fmt:message key="imovel.show" /></title>
</head>
<body>

	<!--      form utilizado para excluir o item          -->
	<form style="margin-bottom: 0px;" id="deleteImovel${imovel.id}" action="${pageContext.request.contextPath}/imoveis/${imovel.id}" method="post">
		<input type="hidden" name="_method" value="delete"/>
	</form>
	
	<div class="span5">
		<a href="${pageContext.request.contextPath}/imoveis" 
				class="btn btn-primary ico-left-open fLeft" tabindex="3" role="button"><fmt:message key="voltar" /></a>		
	</div>
	
	<div class="span16">
		<table class="tableList">
			<tbody>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="id" /> do <fmt:message key="imovel" />: </b>${imovel.id}</td>
					<td class="span3 txtRight">
						<a href="${pageContext.request.contextPath}/imoveis/${imovel.id}/edit"
						title="<fmt:message key="editar" /> <fmt:message key="imovel" />" class="ico-edit"
						data-toggle="modal" data-target="#editarimovel" tabindex="3"><fmt:message key="editar" /></a>
						<a href="#" class="ico-trash btn_delete" onclick="if (confirm('<fmt:message key="voce_deseja_excluir" />?')){ $('#deleteImovel${imovel.id}').submit();}"><fmt:message key="excluir" /></a>
					</td>
				</tr>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="nome" />: </b> ${imovel.nome} </td>
					<td class="span3"></td>
				</tr>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="descricao" />: </b>${imovel.descricao}</td>
					<td class="span3"></td>
				</tr>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="tipoImovel" />: </b>${imovel.tipoImovel}</td>
					<td class="span3"></td>
				</tr>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="imovel" />: </b> ${imovel.imovel}</td>
						
					<td class="span3"></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>