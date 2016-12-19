package com.shop.model.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class BillingAddress implements Serializable {
	
private static final long serialVersionUID = 1L;
@Id
@GeneratedValue
private String billingAddressId;
private String plotNo;
private String streetName;
private String city;
private String state;
private String country;

public String getBillingAddressId() {
	return billingAddressId;
}
public void setBillingAddressId(String billingAddressId) {
	this.billingAddressId = billingAddressId;
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
