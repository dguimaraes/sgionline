<div class="span16">		
	<form action="${pageContext.request.contextPath}/tipoImoveis" method="post">
	
		<div class="span5">
			<c:if test="${tipoImovel != null}">
				<input type="hidden" id="id" name="tipoImovel.id" value="${tipoImovel.id}" > 
				<input type="hidden" name="_method" value="put"/>
			</c:if>
			<div class="control-group">
				<label class="control-label" for="inputNoWarning"><fmt:message key="nome" /></label>
				<input type="text" id="nome" class="span4" name="tipoImovel.nome" data-value=""
				value="${tipoImovel.nome}" placeholder="<fmt:message key="nome" />" >
			</div>
			<div class="control-group">
				<label class="control-label" for="date"><fmt:message key="descricao" /></label> <input
					class="span4" id="descricao" name="tipoImovel.descricao" value="${tipoImovel.descricao}"
					size="50" type="text" data-value="" placeholder="<fmt:message key="descricao" />">
			</div>
			<div class="control-group">
				<label class="control-label" for="date"><fmt:message key="sigla" /></label> <input
					class="span4" id="sigla" name="tipoImovel.sigla" value="${tipoImovel.sigla}"
					size="50" type="text" data-value="" placeholder="<fmt:message key="sigla" />">
			</div>
			<div class="control-group">
				<label class="control-label" for="date"><fmt:message key="temImovel" /></label> <input
					class="span4" id="temImovel" name="tipoImovel.temImovel" 
						<c:if test="${tipoImovel.temImovel}">checked</c:if>
					size="50" type="checkbox" data-value="" placeholder="<fmt:message key="temImovel" />">
			</div>
			<div class="control-group">
				<input type="submit" value="<fmt:message key="salvar" />" class="btn btn-primary" tabindex="3">
				&nbsp;
				<a href="${pageContext.request.contextPath}/tipoImoveis" 
				class="btn ico-cancel-1 fRigth" tabindex="3" role="button"><fmt:message key="cancelar" /></a>
			</div>	
		</div>
	</form>
</div>