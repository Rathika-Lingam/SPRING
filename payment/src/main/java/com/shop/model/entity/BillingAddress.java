package com.shop.model.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;

@Entity
@Component
public class BillingAddress implements Serializable {
	
private static final long serialVersionUID = 1L;
@Id
@GeneratedValue
private int shipId;
private String plotNo;
private String streetName;
private String city;
private String state;
private String country;
public User getId_fk() {
	return id_fk;
}
public void setId_fk(User id_fk) {
	this.id_fk = id_fk;
}
@OneToOne
@JoinColumn(name="email")
private User id_fk;



public int getShipId() {
	return shipId;
}
public void setShipId(int shipId) {
	this.shipId = shipId;
}
public String getPlotNo() {
	return plotNo;
}
public void setPlotNo(String plotNo) {
	this.plotNo = plotNo;
}
public String getStreetName() {
	return streetName;
}
public void setStreetName(String streetName) {
	this.streetName = streetName;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}


}
