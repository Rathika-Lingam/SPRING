package com.shop.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.model.entity.Cart;
import com.shop.model.entity.Cartitems;
import com.shop.model.service.CartService;
import com.shop.model.service.PaymentService;

@Controller
public class PaymentController {
	@Autowired
	private  PaymentService ps;
	@Autowired
	private CartService cs;
	
	
	@ModelAttribute

@RequestMapping("/thanks")
public String pay(HttpServletRequest req)
{
	 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	 String name = auth.getName(); 
	 List<Cartitems> crt=cs.getAllCartitems();
	 Cart cart=new Cart();
	
	 
	 
	for (int i=0;i<crt.size();i++)
	 {
	     cart.setProduct(crt.get(i).getProduct());
		 cart.setQuantity(crt.get(i).getQuantity());
		 ps.add(name,cart);  
		 
	 }
	   
    /* ps.order(name);
     List<Orders> ordlist=paymentService.getallorders();
     email.send(name,ordlist.get(ordlist.size()-1).getOrderId());
     paymentService.CartItems();	      
*/
	
	
	return "thanks";
}
}
