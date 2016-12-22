package com.shop.model.entity;

import java.io.Serializable;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

import javax.persistence.ManyToOne;


@Entity
public class Cartitems implements Serializable {
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String cartitemid;
	private String Total;
	private String Quantity;
	
	@ManyToOne
    @JoinColumn(name = "productid")
    private Products product;
	@ManyToOne
    @JoinColumn(name = "cartid")
    private Cart cart;
	public String getCartitemid() {
		return cartitemid;
	}
	public void setCartitemid(String cartitemid) {
		this.cartitemid = cartitemid;
	}
	
	public String getTotal() {
		return Total;
	}
	public void setTotal(String total) {
		Total = total;
	}
	public Products getProduct() {
		return product;
	}
	public void setProduct(Products product) {
		this.product = product;
	}
	public String getQuantity() {
		return Quantity;
	}
	public void setQuantity(String quantity) {
		Quantity = quantity;
	}
	
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	

}
