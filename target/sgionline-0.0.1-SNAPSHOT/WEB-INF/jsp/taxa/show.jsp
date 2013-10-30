<head>
<title><fmt:message key="taxa" /> <fmt:message key="detalhe" /> </title>
</head>
<body>

	<!--      form utilizado para excluir o item          -->
	<form style="margin-bottom: 0px;" id="deleteTaxa${taxa.id}" action="${pageContext.request.contextPath}/taxas/${taxa.id}" method="post">
		<input type="hidden" name="_method" value="delete"/>
	</form>
	
	<div class="span5">
		<a href="${pageContext.request.contextPath}/taxas" 
				class="btn btn-primary ico-left-open fLeft" tabindex="3" role="button"><fmt:message key="voltar" /></a>		
	</div>
	
	<div class="span16">
		<table class="tableList">
			<tbody>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="id" /> da <fmt:message key="taxa" />: </b>${taxa.id}</td>
					<td class="span3 txtRight">
						<a href="${pageContext.request.contextPath}/taxas/${taxa.id}/edit"
						title="<fmt:message key="editar" /> <fmt:message key="taxa" />" class="ico-edit"
						data-toggle="modal" data-target="#editarTaxa" tabindex="3"><fmt:message key="editar" /></a>
						<a href="#" class="ico-trash btn_delete" onclick="if (confirm('<fmt:message key="voce_deseja_excluir" />?')){ $('#deleteTaxa${taxa.id}').submit();}"><fmt:message key="excluir" /></a>
					</td>
				</tr>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="nome" />: </b> ${taxa.nome} </td>
					<td class="span3"></td>
				</tr>
				<tr>
					<td class="span7 noBorderRight txtLeft"><b><fmt:message key="sigla" />: </b>${taxa.sigla}</td>
					<td class="span3"></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>