package com.shop.model.entity;

import java.io.Serializable;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
public class Cartitems implements Serializable {
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cartitemid;
	private double Total;
	private int Quantity;
	
	@ManyToOne
    @JoinColumn(name = "productid")
    private Products product;
	@ManyToOne
    @JoinColumn(name = "cartid")
	 @JsonIgnore
    private Cart cart;
	
	@OneToOne
	@JoinColumn(name="userid")
    @JsonIgnore
	private User id_fk;

	public User getId_fk() {
		return id_fk;
	}
	public void setId_fk(User id_fk) {
		this.id_fk = id_fk;
	}
	public int getCartitemid() {
		return cartitemid;
	}
	public void setCartitemid(int cartitemid) {
		this.cartitemid = cartitemid;
	}
	
	public double getTotal() {
		return Total;
	}
	public void setTotal(double total) {
		Total = total;
	}
	public Products getProduct() {
		return product;
	}
	public void setProduct(Products product) {
		this.product = product;
	}
	
	public int getQuantity() {
		return Quantity;
	}
	public void setQuantity(int quantity) {
		Quantity = quantity;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	

}
