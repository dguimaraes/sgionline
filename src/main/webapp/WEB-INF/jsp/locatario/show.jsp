<head>
<title><fmt:message key="locatario" /> <fmt:message key="detalhe" /> </title>
</head>
<body>

	<!--      form utilizado para excluir o item          -->
	<form style="margin-bottom: 0px;" id="deletelocatario${locatario.id}" action="${pageContext.request.contextPath}/locatarios/${locatario.id}" method="post">
		<input type="hidden" name="_method" value="delete"/>
	</form>
	
	<div class="span5">
		<a href="${pageContext.request.contextPath}/locatarios" 
				class="btn btn-primary ico-left-open fLeft" tabindex="3" role="button"><fmt:message key="voltar" /></a>		
	</div>
	
	<div class="span16">
		<table class="tableList">
			<tbody>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="id" /> do <fmt:message key="locatario" />: </b>${locatario.id}</td>
					<td class="span3 txtRight">
						<a href="${pageContext.request.contextPath}/locatarios/${locatario.id}/edit"
						title="<fmt:message key="editar" /> <fmt:message key="locatario" />" class="ico-edit"
						data-toggle="modal" data-target="#editarlocatario" tabindex="3"><fmt:message key="editar" /></a>
						<a href="#" class="ico-trash btn_delete" onclick="if (confirm('<fmt:message key="voce_deseja_excluir" />?')){ $('#deletelocatario${locatario.id}').submit();}"><fmt:message key="excluir" /></a>
					</td>
				</tr>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="nome" />: </b> ${locatario.nome} </td>
					<td class="span3"></td>
				</tr>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="cpf" />: </b>${locatario.cpf}</td>
					<td class="span3"></td>
				</tr>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="rg" />: </b>${locatario.rg}</td>
					<td class="span3"></td>
				</tr>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="telefone" />: </b>${locatario.telefone}</td>
					<td class="span3"></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>