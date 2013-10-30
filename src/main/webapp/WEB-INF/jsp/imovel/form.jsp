<div class="span16">		
	<form action="${pageContext.request.contextPath}/imoveis" method="post">
	
		<div class="span5">
			<c:if test="${imovel != null}">
				<input type="hidden" id="id" name="imovel.id" value="${imovel.id}" > 
				<input type="hidden" name="_method" value="put"/>
			</c:if>
			<div class="control-group">
				<label class="control-label" for="inputNoWarning"><fmt:message key="nome" /></label>
				<input type="text" id="nome" class="span4" name="imovel.nome" data-value=""
				value="${imovel.nome}" placeholder="<fmt:message key="nome" />" >
			</div>
			<div class="control-group">
				<label class="control-label"><fmt:message key="descricao" /></label> 
					<input class="span4" id="descricao" name="imovel.descricao" value="${imovel.descricao}"
					size="50" type="text" data-value="" placeholder="<fmt:message key="descricao" />">
			</div>
			<div class="control-group">
				<label class="control-label"><fmt:message key="metragem" /></label> 
					<input class="span4" id="metragem" name="imovel.metragem" value="${imovel.metragem}"
					maxlength="7" type="text" data-value="" placeholder="<fmt:message key="metragem" />">
			</div>
			<div class="control-group">
				<label class="control-label" for="date"><fmt:message key="tipoImovel" /></label> 
				<select name="imovel.tipoImovel.id">
					<option value=""><fmt:message key="selecione" /></option>
				  <c:forEach var="tipoImovel" items="${tipoImovelList}">
				    <option value="${tipoImovel.id}" <c:if test = "${imovel.tipoImovel.id == tipoImovel.id}">selected="true"</c:if>>
				      ${tipoImovel.sigla} - ${tipoImovel.nome}
					</option>
				  </c:forEach>
				</select>
			</div>
			<div class="control-group">
				<label class="control-label" for="date"><fmt:message key="imovel" /></label> 
				<select name="imovel.imovel.id">
				  <option value=""><fmt:message key="selecione" /></option>
				  <c:forEach var="imovel2" items="${imovelList}">
				  	<c:if test = "${imovel.id != imovel2.id}">
					    <option value="${imovel2.id}" <c:if test = "${imovel.imovel.id == imovel2.id}">selected="true"</c:if>>
					      ${imovel2.tipoImovel.sigla} -> ${imovel2.id} - ${imovel2.nome}  
						</option>
					</c:if>
				  </c:forEach>
				</select>
			</div>
			<div class="control-group">
				<input type="submit" value="<fmt:message key="salvar" />" class="btn btn-primary" tabindex="3">
				&nbsp;
				<a href="${pageContext.request.contextPath}/imoveis" 
				class="btn ico-cancel-1 fRigth" tabindex="3" role="button"><fmt:message key="cancelar" /></a>
			</div>	
		</div>
	</form>
</div>