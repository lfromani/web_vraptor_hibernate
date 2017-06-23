<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de Veículo</title>
<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet">
<link href="<c:url value="/js/bootstrap.js"/>" rel="stylesheet">
<c:import url="../login/index.jsp"></c:import>
</head>
<body>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="col-md-6">
			<div class="form-area">
				<h3>
					Cadastro de Veículo <small> - Novo</small>
				</h3>
				<br>
				<form class="form-horizontal"
					action="${linkTo[VeiculoController].salvar()}" method="post">
					<div class="form-group">
						<label class="col-sm-2 control-label">Código:</label>
						<div class="col-sm-2">
							<input class="form-control" type="text" name="veiculo.codigo"
								value="${veiculo.codigo}" disabled="disabled" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Nome:</label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="veiculo.nome"
								value="${veiculo.nome}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Ano:</label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="veiculo.ano"
								value="${veiculo.ano}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Placa:</label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="veiculo.placa"
								value="${veiculo.placa}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Cor:</label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="veiculo.cor"
								value="${veiculo.cor}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Número Vaga:</label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="veiculo.vaga"
								value="${veiculo.vaga}" />
						</div>
				
					</div>
					<br> <br> <br> <a type="button"
						class="btn btn-default" href="${linkTo[LoginController].index()}">Voltar</a>
					<button type="submit" class="btn btn-success">Salvar</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>