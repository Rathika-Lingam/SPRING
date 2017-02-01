package com.shop.model.entity;


import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;



@Entity
public class Products implements Serializable {
	
	 public Products() {
	 
	 }
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
 
	private int productid;
	@NotEmpty(message="Please Enter the Name")

	private String productname;
	/*@NotEmpty(message="Please Enter the quantity")*/
	private int productquantity;
	
	@NotEmpty(message="Description is needed")
	
	private String productdescription;
	
	/*@Size(min = 1,message = "Price is invalid")*/
	private double productprice;
	
	@NotEmpty(message="choose your category")

	private String categoryname;
	@NotEmpty(message="Image name is Mandatory")
	
	private String imagename;
	
	private transient MultipartFile file;

	 public MultipartFile getFile() {
			return file;
		}

		public void setFile(MultipartFile file) {
			this.file = file;
		}


		public String getImagename() {
			return imagename;
		}
		public void setImagename(String imagename) {
			this.imagename = imagename;
		}	
   	
	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public int getProductquantity() {
		return productquantity;
	}

	public void setProductquantity(int productquantity) {
		this.productquantity = productquantity;
	}

	public String getProductdescription() {
		return productdescription;
	}

	public void setProductdescription(String productdescription) {
		this.productdescription = productdescription;
	}



	public double getProductprice() {
		return productprice;
	}

	public void setProductprice(double productprice) {
		this.productprice = productprice;
	}

	public String getCategoryname() {
		return categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}

}
