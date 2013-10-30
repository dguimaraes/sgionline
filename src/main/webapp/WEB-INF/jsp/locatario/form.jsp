<div class="span16">		
	<form action="${pageContext.request.contextPath}/locatarios" method="post">
	
		<div class="span5">
			<c:if test="${locatario != null}">
				<input type="hidden" id="id" name="locatario.id" value="${locatario.id}" > 
				<input type="hidden" name="_method" value="put"/>
			</c:if>
			<div class="control-group">
				<label class="control-label" for="inputNoWarning"><fmt:message key="nome" /></label>
				<input type="text" id="nome" class="span4" name="locatario.nome" data-value=""
				value="${locatario.nome}" placeholder="<fmt:message key="nome" />" >
			</div>
			<div class="control-group">
				<label class="control-label" for="date"><fmt:message key="cpf" /></label> <input
					class="span4" id="cpf" name="locatario.cpf" value="${locatario.cpf}"
					size="12" type="text" data-value="" placeholder="<fmt:message key="cpf" />">
			</div>
			<div class="control-group">
				<label class="control-label" for="date"><fmt:message key="rg" /></label> <input
					class="span4" id="rg" name="locatario.rg" value="${locatario.rg}"
					size="10" type="text" data-value="" placeholder="<fmt:message key="rg" />">
			</div>
			<div class="control-group">
				<label class="control-label" for="date"><fmt:message key="telefone" /></label> <input
					class="span4" id="telefone" name="locatario.telefone" value="${locatario.telefone}"
					size="12" type="text" data-value="" placeholder="<fmt:message key="telefone" />">
			</div>
			<div class="control-group">
				<input type="submit" value="<fmt:message key="salvar" />" class="btn btn-primary" tabindex="3">
				&nbsp;
				<a href="${pageContext.request.contextPath}/locatarios" 
				class="btn ico-cancel-1 fRigth" tabindex="3"role="button"><fmt:message key="cancelar" /></a>
			</div>	
		</div>
	</form>
</div>