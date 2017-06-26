<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Movimentação</title>
<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet">
<link href="<c:url value="/js/bootstrap.js"/>" rel="stylesheet">
<c:import url="../login/index.jsp"></c:import>
</head>
<body>
	<div class="container">
		<div class="col-md-6">
			<div class="form-area">
				<h3>
					Movimento <small> - Novo</small>
				</h3>
				<br>
				<form class="form-horizontal"
					action="${linkTo[MovimentoController].salvar()}" method="post">
					<input class="form-control" type="hidden" name="movimento.codigo"/>
					<div class="form-group">
						<label class="col-sm-3 control-label">Cliente*</label>
						<div class="col-sm-6">
							<select class="form-control" name="movimento.cliente.codigo">
        						<c:forEach var="c" items="${clientes}">
            						<option> <c:out value="${c.nome}"/></option>
          						</c:forEach>
       						</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">Vaga*</label>
						<div class="col-sm-6">
							<select class="form-control" name="movimento.duracao.codigo">
        						<c:forEach var="d" items="${duracoes}">
            						<option> <c:out value="${d.vaga}"/></option>
          						</c:forEach>
       						</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">Veículo*</label>
						<div class="col-sm-6">
							<select class="form-control" name="movimento.veiculo.codigo">
        						<c:forEach var="v" items="${veiculos}">
            						<option> <c:out value="${v.placa}"/></option>
          						</c:forEach>
       						</select>
						</div>
					</div>
					<br> <a type="button"class="col-sm-offset-3 btn btn-default" href="${linkTo[LoginController].index()}">Cancelar</a>
					<button type="submit" class="btn btn-primary">Salvar</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>