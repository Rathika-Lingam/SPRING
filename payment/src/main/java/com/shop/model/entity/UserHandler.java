package com.shop.model.entity;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import com.shop.model.service.BillingAddressService;
import com.shop.model.service.CartService;


@Component
public class UserHandler {
	
	@Autowired
	private BillingAddressService bas;

	@Autowired
	private CartService cs;
	
	@Autowired
	HttpServletRequest req;
	
	public BillingAddress initFlow(){
		return new BillingAddress();
	}
		

	/*public String validateDetails(BillingAddress bs,MessageContext messageContext){
		String status = "success";
		
		if(bs.getStreetName().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"streetName").defaultText("Username cannot be Empty").build());
			status = "failure";
		}
		
		if(bs.getPlotNo().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"plotNo").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		
		if(bs.getCity().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"city").defaultText("phone number cannot be Empty").build());
			status = "failure";
		}
		
		if(bs.getState().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"state").defaultText(" cannot be Empty").build());
			status = "failure";
		}
		
		if(bs.getCountry().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"country").defaultText(" cannot be Empty").build());
			status = "failure";
		}
	
		bas.add(bs);
	    List<Cartitems> crt=cs.getAllCartitems();
		Cart crts=new Cart();
		String name;
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 
		String username = auth.getName(); 
	      HttpSession ses=req.getSession();
	      ses.setAttribute("u",username);
	      name=(String)ses.getAttribute("u");
	   
	      
	      
	      User user=new User();
	      user.setEmail(name);
	      bs.setId_fk(user);
	    
	     String id=bs.getShipId();
	 
	     
		crts.setCartItems(crt); //setter method of List of Cartitems in Cart.java
		cs.addcart(crts);
		return status;
		
	}

}
*/	


public void saveaddress(BillingAddress bs)
{	  String username;
	  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	  String name = auth.getName(); //get logged in username
	 
      HttpSession ses=req.getSession();
      ses.setAttribute("u",name);
      username=(String)ses.getAttribute("u");
   
      
   /*   
      User user=new User();
      user.setEmail(username);
      bs.setId_fk(user);
    
     String id=bs.getShipId();
 */  bas.add(bs);
}
}