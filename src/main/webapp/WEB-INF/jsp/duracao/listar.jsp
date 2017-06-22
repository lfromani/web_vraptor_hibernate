<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Lista de Tempo</title>
	<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet">
	<link href="<c:url value="/js/bootstrap.js"/>" rel="stylesheet">
	<c:import url="../login/index.jsp"></c:import>
</head>
<body>
	<br>
	<br>
	<br>
	<div style="margin: 2% 20% 20% 20%" class="container-fluid">
	<table class="table table-bordered table-striped">
	<tr style="text-align: center;">
	            <td style="width: 10%"><b>Código</b></td>
				<td style="width: 20%"><b>Hora entrada</b></td>
				<td style="width: 20%"><b>Hora saída</b></td>
				<td style="width: 20%"><b>Número vaga</b></td>
				<td style="width: 20%"><b>Tempo</b></td>
				<td style="width: 10%"></td>
			</tr>
		<c:forEach var="duracao" items="${resultado}">
			<tr>
				<td align="center"><c:out value="${duracao.codigo}"/></td>
				<td align="center"><c:out value="${duracao.entrada}"/></td>
				<td align="center"><c:out value="${duracao.saida}"/></td>
				<td align="center"><c:out value="${duracao.vaga}"/></td>
				<td align="center"><c:out value="${duracao.tempo}"/></td>
				<td>
					<a class="btn btn-xs btn-primary" type="button" href="${linkTo[DuracaoController].visualiza(duracao.codigo)}">
						<span style="padding: 2px" class="glyphicon glyphicon-pencil"></span>
					</a>
					<a class="btn btn-xs btn-danger" type="button" href="${linkTo[DuracaoController].excluir(duracao.codigo)}">
						<span style="padding: 2px" class="glyphicon glyphicon-trash"></span>
					</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>