package com.shop.controllers;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.model.dao.UserDao;
import com.shop.model.entity.Cartitems;
import com.shop.model.entity.Products;
import com.shop.model.entity.User;
import com.shop.model.service.CartService;
import com.shop.model.service.ProductService;

@Controller
public class CartController {

	@Autowired
	private CartService cs;
	@Autowired
	private ProductService productService;
	@Autowired
	private UserDao ud;
	
	@RequestMapping("/cart")//when click cart in header
	public String cart(Map<String,Object> map,HttpSession session)
	{
	
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String username = auth.getName();  	 		 
		 List<User> userDetail = ud.getUserByName(username);//user details are stored in userDetail object		
	
	 List<Cartitems> crt=cs.getbyuserid(userDetail.get(0).getUserid());
		 map.put("cartList", crt);
		 session.setAttribute("cartlength", cs.cartLength(userDetail.get(0).getUserid()));
	     return "cart";
	
	}
	
	
	
	
	@RequestMapping("/carts")//when click addtocart in productdetails page
	public String getcart(@RequestParam("value")int id,Map<String,Object> map ,HttpSession session)
	{	
		
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String username = auth.getName();  	 		 
		 List<User> userDetail = ud.getUserByName(username);		

	    Cartitems cart=new Cartitems();
		Products pr=productService.getProduct(id);
		
    
         List<Cartitems> crt=cs.getbyuserid(userDetail.get(0).getUserid());
         System.out.println(userDetail.get(0).getUserid()); 
         System.out.println(crt);
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
      					map.put("cartList", crt);
      					return "cart";			
			
      					}
		
      				}
		
		
		cart.setQuantity(1);//setter method of quantity in cartitems table

		cart.setTotal(pr.getProductprice());
		cart.setId_fk(userDetail.get(0));//foreign key of userid
		
		cart.setProduct(pr);//foreign key of Productid		
		
		cs.add(cart);//add the quantity,total,productid in cartitems table using the cart object
		
	List<Cartitems> crtss=cs.getbyuserid(userDetail.get(0).getUserid());
	map.put("cartList", crtss); 
		
	session.setAttribute("cartlength", cs.cartLength(userDetail.get(0).getUserid()));
		
	return "cart" ;
		
	}
	
	
	
	
	//HttpSession=[container creates a session id for each user.The container uses this id to identify the particular user].
	@RequestMapping("/remove")
	public String remove(@RequestParam("del")int id,Map<String,Object> map,HttpSession session)
	{
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String username = auth.getName();  	 		 
		 List<User> userDetail = ud.getUserByName(username);		

		cs.delete(id);	
		
		List<Cartitems> crtss=cs.getbyuserid(userDetail.get(0).getUserid());
		
		map.put("cartList", crtss);
			
		session.setAttribute("cartlength", cs.cartLength(userDetail.get(0).getUserid()));	
		return "cart" ;
		
	}

}
