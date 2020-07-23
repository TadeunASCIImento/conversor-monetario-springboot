package br.com.application.models;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@EqualsAndHashCode
@AllArgsConstructor
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class Item implements Serializable {
	private static final long serialVersionUID = -1257712140364920569L;

	@XmlElement(name = "code")
	private String code;

	@XmlElement(name = "codein")
	private String codein;

	@XmlElement(name = "name")
	private String name;

	@XmlElement(name = "high")
	private String high;

	@XmlElement(name = "low")
	private String low;

	@XmlElement(name = "varBid")
	private String varBid;

	@XmlElement(name = "pctChange")
	private String pctChange;

	@XmlElement(name = "bid")
	private String bid;

	@XmlElement(name = "ask")
	private String ask;

	@XmlElement(name = "timestamp")
	private String timestamp;

	@XmlElement(name = "create_date")
	private String createDate;

}
