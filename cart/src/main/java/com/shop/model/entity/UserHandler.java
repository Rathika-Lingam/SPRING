package com.shop.model.entity;




import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import com.shop.model.dao.UserDao;
import com.shop.model.service.BillingAddressService;
import com.shop.model.service.UserService;



@Component
public class UserHandler {
	
	@Autowired
	private BillingAddressService bas;

	@Autowired
	private UserDao ud;

	
	public BillingAddress initFlow(){
		return new BillingAddress();
	}
		
public void address(BillingAddress bs)
{	
	 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	 String username = auth.getName();  
	 		 
	 List<User> userDetail = ud.getUserByName(username);//user details are stored in userDetail object
	  
	 //TO STORE  THE USERID IN BILLINGADDRESS TABLE
	   for(int i=0;i<userDetail .size();i++)
	   { 
		bs.setId_fk(userDetail.get(i));
	   }
	    
     bas.saveorupdate(bs);
}
}