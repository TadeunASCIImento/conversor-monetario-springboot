<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cotação e conversão de moeda</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/estilo.css">
</head>
<body>
	<div class="container-fluid">
		<header class="cabecalho">
			<h1>COTAÇÕES</h1>
		</header>
		<table class="table table-dark">
			<thead>
				<tr>
					<th id="data-cotacao">DATA DA COTAÇÃO:
						${comercial.moeda.createDate}</th>
				</tr>
			</thead>
			<thead>
				<tr>
					<th>MOEDA</th>
					<th>COMPRA</th>
					<th>VENDA</th>
					<th>MÁXIMO(dia)</th>
					<th>MÍNIMO(dia)</th>
					<th>VARIAÇÃO</th>
					<th>% VARIAÇÃO</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${comercial.moeda.name}</td>
					<td id="cbid">R$ ${comercial.moeda.bid}</td>
					<td id="cask">R$ ${comercial.moeda.ask}</td>
					<td id="chigh">R$ ${comercial.moeda.high}</td>
					<td id="clow">R$ ${comercial.moeda.low}</td>
					<td id="cvarbid">${comercial.moeda.varBid}</td>
					<td id="cpctchange">${comercial.moeda.pctChange}</td>
				</tr>
				<tr>
					<td>${turismo.moeda.name}</td>
					<td id="tbid">R$ ${turismo.moeda.bid}</td>
					<td id="task">R$ ${turismo.moeda.ask}</td>
					<td id="thigh">R$ ${turismo.moeda.high}</td>
					<td id="tlow">R$ ${turismo.moeda.low}</td>
					<td id="tvarbid">${turismo.moeda.varBid}</td>
					<td id="tpctchange">${turismo.moeda.pctChange}</td>
				</tr>
				<tr>
					<td>${euro.moeda.name}</td>
					<td id="ebid">R$ ${euro.moeda.bid}</td>
					<td id="eask">R$ ${euro.moeda.ask}</td>
					<td id="ehigh">R$ ${euro.moeda.high}</td>
					<td id="elow">R$ ${euro.moeda.low}</td>
					<td id="evarbid">${euro.moeda.varBid}</td>
					<td id="epctchange">${euro.moeda.pctChange}</td>
				</tr>
			</tbody>
		</table>
		<h3>CONVERSOR DE MOEDA</h3>
		<form class="form-inline">
			<img src="css/imagens/icone-brasil.png" class="icone-brasil" /> <label
				id="label-moeda">BRL</label> <input type="text" class="form-control"
				oninput=" convertbrltousdtoeur(${comercial.moeda.bid},${euro.moeda.bid});" id="input-brl"><img
				src="css/imagens/icone-eua.png" class="icone-eua" /> <label
				id="label-moeda">USD</label> <input type="text" class="form-control"
				oninput="convertusdtoeurtobrl(${comercial.moeda.bid},${euro.moeda.bid});" id="input-usd">
				
				<img
				src="css/imagens/icone-euro.png" class="icone-euro" /> <label
				id="label-moeda">EUR</label> <input type="text" class="form-control"
				oninput="converteurtousdtobrl(${comercial.moeda.bid},${euro.moeda.bid});" id="input-eur">
		</form>
		<footer class="footer">
			<a href="https://linkedin.com/in/tadeu-do-nascimento">
				<img src="css/imagens/icone_linkedin.png" class="icone-linkedin" />
			</a> <a href="https://github.com/TadeunASCIImento"> <img
				src="css/imagens/icone_github.png" class="icone-github" />
			</a> <a href="mailto:tadeunascimentosp@gmail.com"> <img
				src="css/imagens/icone_email.png" class="icone-email" />
			</a>
			<p class="parag-foot">
				<b> Desenvolvido por Tadeu do Nascimento &copy; 2020 </b>
			</p>
		</footer>
	</div>
	<script type="text/javascript" src="/javascript/script.js"></script>
</body>
</html>