package com.shop.model.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cart implements Serializable {

	private static final long serialVersionUID = 1L;
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private String cartid;
private String date;

private double grandTotal;
private String quantity;
private String time;




public String getCartid() {
	return cartid;
}
public void setCartid(String cartid) {
	this.cartid = cartid;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public double getGrandTotal() {
	return grandTotal;
}
public void setGrandTotal(double grandTotal) {
	this.grandTotal = grandTotal;
}
public String getQuantity() {
	return quantity;
}
public void setQuantity(String quantity) {
	this.quantity = quantity;
}
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}






}
