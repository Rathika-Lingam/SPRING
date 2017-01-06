package com.shop.controllers;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.shop.model.entity.Cartitems;
import com.shop.model.entity.Products;
import com.shop.model.service.CartService;
import com.shop.model.service.ProductService;

@Controller
public class CartController {

	@Autowired
	private CartService cs;
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/cart")//when click cart in header
	public String cart(Map<String,Object> map)
	{
		map.put("cartList", cs.getAllCartitems());
		return "cart";
	}
	

	
	@RequestMapping("/carts")//when click addtocart in productdetails page
	public String getcart(@RequestParam("value")int id,Map<String,Object> map ,HttpSession session)
	{
		Cartitems cart=new Cartitems();
	
		Products pr=productService.getProduct(id);
		
		
         List<Cartitems> crt=cs.getAllCartitems();

      			for(int i=0;i<crt.size();i++)
      				{
      				
			//get product id from the cartitem table
      				int tempid=crt.get(i).getProduct().getProductid();//getProduct() is the getter method of foreign key
			//for update the existing product
      				   				
      				if(tempid==id)
      				
      				{
      					int quantity=crt.get(i).getQuantity()+1;
      				    crt.get(i).setQuantity(quantity);
      					double price=pr.getProductprice()*quantity;
      					crt.get(i).setTotal(price);
      					cs.update(crt.get(i));
      					map.put("cartList", cs.getAllCartitems());
      					return "cart";			
			
      					}
		
      				}
		
		
		cart.setQuantity(1);//setter method of quantity in cartitems table

		cart.setTotal(pr.getProductprice());
		
		cart.setProduct(pr);//foreign key of Productid		
		
		cs.add(cart);//add the quantity,total,productid in cartitems table using the cart object
		
		map.put("cartList", cs.getAllCartitems()); //after giving addtocart,retrieving the list of items in cart
		
		session.setAttribute("cartlength", cs.cartLength());
		
		return "cart" ;
		
	}
	
	
	//HttpSession=[container creates a session id for each user.The container uses this id to identify the particular user].
	@RequestMapping("/remove")
	public String remove(@RequestParam("del")int id,Map<String,Object> map,HttpSession session)
	{
		cs.delete(id);	
		map.put("cartList", cs.getAllCartitems()); //after giving addtocart,retrieving the list of items in cart
		session.setAttribute("cartlength", cs.cartLength());	
		return "cart" ;
	
	}

}
