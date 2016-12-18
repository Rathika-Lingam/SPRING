package com.shop.controllers;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.shop.model.entity.BillingAddress;
import com.shop.model.entity.Products;
import com.shop.model.entity.User;
import com.shop.model.service.BillingAddressService;
import com.shop.model.service.CategoryService;
import com.shop.model.service.ProductService;

@Controller
public class HomeController {
	@Autowired
	private CategoryService  categoryService;
	@Autowired
	private ProductService  productService;
	
	
@RequestMapping(value={"/","/index"})
public String show(Map<String, Object> map)
{
	map.put("categoryList", categoryService.getAllcategory());
	return "index";
}
@RequestMapping("/home")
public String move()
{
	return "index";
}


@RequestMapping(value="/login",method = RequestMethod.GET)
public ModelAndView getLoginForm(
		@RequestParam(required = false) String authfailed, String logout,
		String denied) {
	String message = "";
	if (authfailed != null) {
		message = "Invalid username of password, try again !";
	} else if (logout != null) {
		message = "Logged Out successfully, login again to continue !";
	} else if (denied != null) {
		message = "Access denied for this user !";
	}
	return new ModelAndView("login", "message", message);
}


@RequestMapping(value="/logout", method = RequestMethod.GET)
public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
	 System.out.println("in login logout method");
    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    if (auth != null){    
        new SecurityContextLogoutHandler().logout(request, response, auth);
    }
    return "redirect: index?logout";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
}	

@RequestMapping(value = "/error", method = RequestMethod.GET)
public ModelAndView accesssDenied() {

  ModelAndView model = new ModelAndView();

  //check if user is login
  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
  if (!(auth instanceof AnonymousAuthenticationToken)) {
	User user= (User) auth.getPrincipal();
	model.addObject("username", user.getUsername());
  }

  model.setViewName("error");
  return model;

}

@RequestMapping("/viewall")
public String  all()
{
return "viewall"; 
}

@RequestMapping("/sony")
public @ResponseBody List<Products> prod()
{
	/*map.put("productList", productService.getAllProduct());*/
	return productService.getAllProduct();
}


@RequestMapping("/allproduct")
public String view(@RequestParam("val")String id,Map<String, Object> map)
{
	System.out.println("allproduct");
	map.put("productList", productService.getAllProductfromcategory(id));
	return "allproduct";
}


/*@RequestMapping("/cart")
public String  cart()
{
return "cart"; 
}
*/

}
