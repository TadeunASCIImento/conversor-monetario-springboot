function formatar() {
	var info = [ "cbid", "cask", "chigh", "clow", "cvarbid", "cpctchange",
			"tbid", "task", "thigh", "tlow", "tvarbid", "tpctchange", "ebid",
			"eask", "ehigh", "elow", "evarbid", "epctchange" ];
	for (var i = 0; i < info.length; i++) {
		var valinfo = document.getElementById(info[i]);
		valinfo.textContent = valinfo.textContent.replace('.', ',');
	}
}

formatar();

function validacao(inputone, inputtwo, inputthree) {
	if (isNaN(inputone.value)) {
		inputtwo.value = "Ops!!!";
		inputthree.value = "Só números!";
		return true
	} else {
		return false;
	}
}
function converteurtousdtobrl(dolar, euro) {
	var rel = document.getElementById("input-brl");
	var dol = document.getElementById("input-usd");
	var eur = document.getElementById("input-eur");
	if (!validacao(eur, rel, dol)) {
		dol.value = (eur.value * (euro / dolar)).toFixed(2).replace('.', ',');
		rel.value = (eur.value * euro).toFixed(2).replace('.', ',');
	}
}
function convertusdtoeurtobrl(dolar, euro) {
	var dol = document.getElementById("input-usd");
	var rel = document.getElementById("input-brl");
	var eur = document.getElementById("input-eur");
	if (!validacao(dol, rel, eur)) {
		rel.value = (dol.value * dolar).toFixed(2).replace('.', ',');
		eur.value = (dol.value * (dolar / euro)).toFixed(2).replace('.', ',');
	}
}
function convertbrltousdtoeur(dolar, euro) {
	var rel = document.getElementById("input-brl");
	var dol = document.getElementById("input-usd");
	var eur = document.getElementById("input-eur");
	if (!validacao(rel, dol, eur)) {
		dol.value = (rel.value / dolar).toFixed(2).replace('.', ',');
		eur.value = (rel.value / euro).toFixed(2).replace('.', ',');
	}
}
