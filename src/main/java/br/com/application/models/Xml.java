package br.com.application.models;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class Xml implements Serializable {
	private static final long serialVersionUID = 2894857439918591309L;

	@XmlElement(name = "item")
	public Item moeda;

	public Item getMoeda() {
		return moeda;
	}

	public void setMoeda(Item moeda) {
		this.moeda = moeda;
	}

}
