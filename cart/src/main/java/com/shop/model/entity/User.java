package com.shop.model.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class User implements Serializable {
	
	private static final long serialVersionUID = 1L;
		public User(){
		
	}
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)

        private int userid;
		
		
		
	
		public int getUserid() {
			return userid;
		}
		public void setUserid(int userid) {
			this.userid = userid;
		}
		@NotEmpty(message="Please Enter Your Name")
	    private String username;
		
		
     	private String email;
	
		@NotNull
		@Size(min=10,max=12)
	private String phonenumber;
		@NotEmpty(message = "Please enter your password.")
		
		@Size(min = 6, max = 15, message = "Your password must between 6 and 15 characters")

		private String password;
		@NotEmpty(message="Password must be same")
		private String confirmpassword;
	private Boolean enabled;
	
	@OneToOne
	@JoinColumn(name="cartid")
	private Cart cart;
	
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}

	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmpassword() {
		return confirmpassword;
	}
	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}
	public Boolean getEnabled() {
		return enabled;
	}
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

}
