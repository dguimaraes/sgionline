<div class="span16">		
	<form action="${pageContext.request.contextPath}/taxas" method="post">
	
		<div class="span5">
			<c:if test="${taxa != null}">
				<input type="hidden" id="id" name="taxa.id" value="${taxa.id}" > 
				<input type="hidden" name="_method" value="put"/>
			</c:if>
			<div class="control-group">
				<label class="control-label" for="inputNoWarning"><fmt:message key="nome" /></label>
				<input type="text" id="nome" class="span4" name="taxa.nome" data-value=""
				value="${taxa.nome}" placeholder="<fmt:message key="nome" />" >
			</div>
			<div class="control-group">
				<label class="control-label" for="date"><fmt:message key="sigla" /></label> <input
					class="span4" id="sigla" name="taxa.sigla" value="${taxa.sigla}"
					size="50" type="text" data-value="" placeholder="<fmt:message key="sigla" />">
			</div>
			<div class="control-group">
				<input type="submit" value="<fmt:message key="salvar" />" class="btn btn-primary" tabindex="3">
				&nbsp;
				<a href="${pageContext.request.contextPath}/taxas" 
				class="btn ico-cancel-1 fRigth" tabindex="3"role="button"><fmt:message key="cancelar" /></a>
			</div>	
		</div>
	</form>
</div>