<head>
	<title><fmt:message key="lista" /> de <fmt:message key="taxa" />s</title>
</head>
<body>
	<div class="span5">
		<a style="margin-bottom: 20px;" href="${pageContext.request.contextPath}/taxas/new" 
				class="btn btn-primary ico-plus fLeft" tabindex="3" role="button"><fmt:message key="nova" /> <fmt:message key="taxa" /></a>		
	</div>
	
	<div class="span16">
		<table class="tableList">
			<thead>
				<tr>
					<th><fmt:message>nome</fmt:message></th>
					<th><fmt:message>sigla</fmt:message></th>
					<th colspan="3"><fmt:message>acoes</fmt:message></th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${taxaList}" var="taxa">
				<tr>
					<td>${taxa.nome}</td>
					<td>${taxa.sigla}</td>
					<td><a href="${pageContext.request.contextPath}/taxas/${taxa.id}" 
					class="ico-list" data-toggle="modal"><fmt:message key="detalhar" /></a></td>
					<td><a href="${pageContext.request.contextPath}/taxas/${taxa.id}/edit"
					class="ico-edit" data-toggle="modal"><fmt:message key="editar" /></a></td>
					<td>
						<form style="margin-bottom: 0px;" id="deleteTaxa${taxa.id}" action="${pageContext.request.contextPath}/taxas/${taxa.id}" method="post">
							<input type="hidden" name="_method" value="delete"/>
							<a href="#" class="ico-trash btn_delete" onclick="if (confirm('<fmt:message key="voce_deseja_excluir" /> a Taxa ${taxa.sigla}?')){ $('#deleteTaxa${taxa.id}').submit();}"><fmt:message key="excluir" /></a>
						</form>
					</td>
					
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div> 
</body>