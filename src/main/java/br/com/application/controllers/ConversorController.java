package br.com.application.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import br.com.application.models.Xml;

@Controller
@RequestMapping("/")
public class ConversorController {

	@Autowired
	private RestTemplate restTemplate;

	final String uriBase = "https://economia.awesomeapi.com.br/xml/";

	@GetMapping
	public ModelAndView converter() {
		ModelAndView modelAndView = new ModelAndView("index");
		Xml euro = restTemplate.getForObject(uriBase.concat("EUR"), Xml.class);
		modelAndView.addObject("euro", euro);
		Xml comercial = restTemplate.getForObject(uriBase.concat("USD-BRL"), Xml.class);
		modelAndView.addObject("comercial", comercial);
		Xml turismo = restTemplate.getForObject(uriBase.concat("USDT"), Xml.class);
		modelAndView.addObject("turismo", turismo);
		return modelAndView;
	}

}
