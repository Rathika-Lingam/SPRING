package com.shop.model.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Cart implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cartid;
	private double grandTotal;
	private int Quantity;
	@ManyToOne
	@JoinColumn(name = "productid")
	@JsonIgnore
	private Products product;
	
	@OneToMany(mappedBy = "cart", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<Cartitems> cartItems;
	
	@OneToOne
	@JoinColumn(name="userid")
    @JsonIgnore
	private User id_fk;

	public int getCartid() {
		return cartid;
	}


	public void setCartid(int cartid) {
		this.cartid = cartid;
	}

	public double getGrandTotal() {
		return grandTotal;
	}


	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}


	public int getQuantity() {
		return Quantity;
	}


	public void setQuantity(int quantity) {
		Quantity = quantity;
	}


	public Products getProduct() {
		return product;
	}


	public void setProduct(Products product) {
		this.product = product;
	}


	public List<Cartitems> getCartItems() {
		return cartItems;
	}


	public void setCartItems(List<Cartitems> cartItems) {
		this.cartItems = cartItems;
	}


	public User getId_fk() {
		return id_fk;
	}


	public void setId_fk(User id_fk) {
		this.id_fk = id_fk;
	}
	
	}
