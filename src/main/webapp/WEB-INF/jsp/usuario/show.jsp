<head>
<title><fmt:message key="usuario" /> <fmt:message key="detalhe" /> </title>
</head>
<body>

	<!--      form utilizado para excluir o item          -->
	<form style="margin-bottom: 0px;" id="deleteusuario${usuario.id}" action="${pageContext.request.contextPath}/usuarios/${usuario.id}" method="post">
		<input type="hidden" name="_method" value="delete"/>
	</form>
	
	<div class="span5">
		<a href="${pageContext.request.contextPath}/usuarios" 
				class="btn btn-primary ico-left-open fLeft" tabindex="3" role="button"><fmt:message key="voltar" /></a>		
	</div>
	
	<div class="span16">
		<table class="tableList">
			<tbody>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="id" /> da <fmt:message key="usuario" />: </b>${usuario.id}</td>
					<td class="span3 txtRight">
						<a href="${pageContext.request.contextPath}/usuarios/${usuario.id}/edit"
						title="<fmt:message key="editar" /> <fmt:message key="usuario" />" class="ico-edit"
						data-toggle="modal" data-target="#editarUsuario" tabindex="3"><fmt:message key="editar" /></a>
						<a href="#" class="ico-trash btn_delete" onclick="if (confirm('<fmt:message key="voce_deseja_excluir" />?')){ $('#deleteUsuario${usuario.id}').submit();}"><fmt:message key="excluir" /></a>
					</td>
				</tr>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="nome" />: </b> ${usuario.nome} </td>
					<td class="span3"></td>
				</tr>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="login" />: </b>${usuario.login}</td>
					<td class="span3"></td>
				</tr>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="email" />: </b>${usuario.email}</td>
					<td class="span3"></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>