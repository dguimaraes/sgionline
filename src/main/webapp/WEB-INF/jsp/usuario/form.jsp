<div class="span16">		
	<form action="${pageContext.request.contextPath}/usuarios" method="post">
	
		<div class="span5">
			<c:if test="${usuario != null}">
				<input type="hidden" id="id" name="usuario.id" value="${usuario.id}" > 
				<input type="hidden" name="_method" value="put"/>
			</c:if>
			<div class="control-group">
				<label class="control-label" for="inputNoWarning"><fmt:message key="nome" /></label>
				<input type="text" id="nome" class="span4" name="usuario.nome" data-value=""
				value="${usuario.nome}" placeholder="<fmt:message key="nome" />" >
			</div>
			<div class="control-group">
				<label class="control-label" for="date"><fmt:message key="login" /></label> <input
					class="span4" id="login" name="usuario.login" value="${usuario.login}"
					size="50" type="text" data-value="" placeholder="<fmt:message key="cpf" />">
			</div>
			<div class="control-group">
				<label class="control-label" for="date"><fmt:message key="senha" /></label> <input
					class="span4" id="senha" name="usuario.senha" value="${usuario.senha}"
					size="50" type="password" data-value="" placeholder="<fmt:message key="senha" />">
			</div>
			<div class="control-group">
				<label class="control-label" for="date"><fmt:message key="email" /></label> <input
					class="span4" id="email" name="usuario.email" value="${usuario.email}"
					size="50" type="text" data-value="" placeholder="<fmt:message key="email" />">
			</div>
			<div class="control-group">
				<input type="submit" value="<fmt:message key="salvar" />" class="btn btn-primary" tabindex="3">
				&nbsp;
				<a href="${pageContext.request.contextPath}/usuarios" 
				class="btn ico-cancel-1 fRigth" tabindex="3"role="button"><fmt:message key="cancelar" /></a>
			</div>	
		</div>
	</form>
</div>