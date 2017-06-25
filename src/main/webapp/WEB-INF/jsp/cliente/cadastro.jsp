<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de Cliente</title>
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
					Cadastro de cliente <small> - Novo</small>
				</h3>
				<br>
				<form class="form-horizontal"
					action="${linkTo[ClienteController].salvar()}" method="post">
					<div class="form-group">
						<label class="col-sm-3 control-label">Código:</label>
						<div class="col-sm-2">
							<input class="form-control" type="text" name="cliente.codigo"
								value="${cliente.codigo}" disabled="disabled" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">Nome*</label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="cliente.nome" value="${cliente.nome}" required="required" placeholder="nome"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">CPF*</label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="cliente.cpf"value="${cliente.cpf}" required="required" placeholder="cpf"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">Endereço*</label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="cliente.endereco" value="${cliente.endereco}" required="required" placeholder="endereço"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">Telefone*</label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="cliente.telefone" value="${cliente.telefone}" required="required" placeholder="telefone" />
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