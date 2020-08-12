<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cotação e conversão de moeda</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
<script data-ad-client="ca-pub-8354484195480755" async
	src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<link rel="stylesheet" href="css/estilo.css">
</head>
<body>
	<div class="container-fluid">
		<header class="cabecalho">
			<h1>
				<b>COTAÇÕES</b>
			</h1>
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
		<h3>CONVERSOR DE MOEDAS</h3>
		<form class="form-inline">
			<img src="/imagens/icone-brasil.png" class="icone-brasil" /> <label
				id="label-moeda">BRL</label> <input type="text" class="form-control"
				oninput=" convertbrltousdtoeur(${comercial.moeda.bid},${euro.moeda.bid});"
				id="input-brl"><img src="/imagens/icone-eua.png"
				class="icone-eua" /> <label id="label-moeda">USD</label> <input
				type="text" class="form-control"
				oninput="convertusdtoeurtobrl(${comercial.moeda.bid},${euro.moeda.bid});"
				id="input-usd"> <img src="/imagens/icone-euro.png"
				class="icone-euro" /> <label id="label-moeda">EUR</label> <input
				type="text" class="form-control"
				oninput="converteurtousdtobrl(${comercial.moeda.bid},${euro.moeda.bid});"
				id="input-eur">
		</form>
		<div class="div-conteudo">
			<h3 class="h3-conteudo">Sistema monetário</h3>
			<p class="p-conteudo">
				Um sistema monetário é um conjunto de regras e instituições cujo
				objetivo é organizar a moeda em um determinado espaço monetário. <br>Tradicionalmente,
				os sistemas monetários são a responsabilidade dos Estados (exceto em
				países que adotam um sistema bancário livre) e são administrados
				como parte da política econômica nacional.<br> Existem também
				sistemas transnacionais, como a zona euro. Um sistema monetário é
				organizado em torno de dois componentes essenciais:<br> • Um
				sistema de moeda de conta:<br> Por exemplo, a zona do euro tem
				como moeda da conta o euro e os centavos de euro.<br> A
				escrituração contábil em euro é obrigatória na zona euro para os
				indivíduos e as empresas desde 2002 e para os mercados financeiros
				desde 1999.<br> • Um sistema de moeda de pagamento (ou de
				transação):<br> Por exemplo, a moeda fiduciária da zona euro é
				um dos elementos da moeda de pagamento ou de transação.<br> Ela
				é composta de espécies metálicas e notas.<br> <br>
			</p>
			<h3 class="h3-conteudo">Criação de moeda</h3>
			<p class="p-conteudo">
				Criação da moeda: é o processo pelo qual a oferta de moeda (ou o
				estoque de moeda) de um país ou região é aumentada. Existem três
				maneiras de criar moeda:<br> • produzindo o papel moeda ou o
				metal.<br> • através de débitos e empréstimos.<br> •
				através de políticas governamentais com a quantitativa flexível.<br>
				As práticas de regulação da produção, emissão e reembolso da moeda
				são o objeto central na economia monetária e afetam a operação dos
				mercados financeiros e o poder de compra da moeda.<br> Os
				bancos centrais mensuram o suprimento de dinheiro, que exibe a
				quantidade de dinheiro existente em um dado espaço de tempo.
			</p>
			<h3 class="h3-conteudo">Economia monetária</h3>
			<p class="p-conteudo">
				A economia monetária é um ramo da economia que apresenta o
				enquadramento para a análise da moeda nas suas funções como um meio
				de troca, reserva de valor e unidade de conta.<br> Trata da
				forma como a moeda, por exemplo a moeda fiduciária, pode obter
				aceitação meramente por força da sua conveniência como um bem
				público.<br> Examina o funcionamento dos sistemas monetários,
				incluindo a regulamentação da moeda e respectivas instituições
				financeiras, assim como aspectos internacionais.<br>
				Historicamente, a disciplina tem-se configurado e permanecido
				inserida integralmente na macroeconomia.<br> A análise mais
				recente tentou fornecer fundamentos microeconómicos para a procura
				(pt) ou demanda (pt-BR) da moeda e para distinguir relações
				monetárias nominais e reais para aplicações micro ou macro,
				incluindo a sua influência sobre a procura (ou demanda) agregada do
				produto.<br> Os seus métodos incluem a dedução teórica e testes
				empíricos das implicações da moeda como um substituto para outros
				ativos e com base em funções explícitas.<br> A expressão pode
				se referir também a um sistema econômico com a presença de dinheiro,
				por oposição, por exemplo, a sistemas baseadas no escambo.
			</p>
		</div>
		<footer class="footer">
			<a href="https://github.com/TadeunASCIImento"> <img
				src="/imagens/icone_github.png" class="icone-github" />
			</a> <a href="https://bitbucket.org/TadeunASCIImento"> <img
				src="/imagens/icone-bitbucket.png" class="icone-bitbucket" />
			</a> <a href="mailto:tadeunascimentosp@gmail.com"> <img
				src="/imagens/icone_email.png" class="icone-email" />
			</a> <a href="https://linkedin.com/in/tadeu-do-nascimento"> <img
				src="/imagens/icone_linkedin.png" class="icone-linkedin" />
			</a>
			<p class="parag-foot">Desenvolvido por Tadeu do Nascimento &copy;
				2020</p>
		</footer>
	</div>
	<script type="text/javascript" src="/javascript/script.js"></script>
</body>
</html>