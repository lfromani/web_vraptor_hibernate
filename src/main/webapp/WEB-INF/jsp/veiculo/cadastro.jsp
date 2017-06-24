<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de veículo</title>
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
					Cadastro de veículo <small> - Novo</small>
				</h3>
				<br>
				<form class="form-horizontal"
					action="${linkTo[VeiculoController].salvar()}" method="post">
					<div class="form-group">
						<label class="col-sm-3 control-label">Código:</label>
						<div class="col-sm-2">
							<input class="form-control" type="text" name="veiculo.codigo"
								value="${veiculo.codigo}" disabled="disabled" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">Nome*</label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="veiculo.nome"value="${veiculo.nome}"required="required"  placeholder="Nome do veículo"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">Ano*</label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="veiculo.ano"value="${veiculo.ano}"required="required"placeholder="Ano"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">Placa*</label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="veiculo.placa"value="${veiculo.placa}"required="required"placeholder="Placa"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">Cor*</label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="veiculo.cor"value="${veiculo.cor}"required="required"placeholder="Cor" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">Número vaga*</label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="veiculo.vaga"value="${veiculo.vaga}" required="required"placeholder="Número da vaga"/>
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