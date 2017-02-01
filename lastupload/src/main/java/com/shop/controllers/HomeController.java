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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.shop.model.entity.Products;
import com.shop.model.entity.User;

import com.shop.model.service.CategoryService;
import com.shop.model.service.ProductService;

@Controller //this annotation is used to mark the class as the controller
public class HomeController {
	@Autowired //this annotation  is performing dependency injection
	private CategoryService  categoryService;
	@Autowired
	private ProductService  productService;
	
	
@RequestMapping(value={"/","/index"})
public String show(Map<String, Object> map)
{
	map.put("categoryList", categoryService.getAllcategory());
	return "index";
}
@RequestMapping("/home") //it is used to map the /home url
public String move()
{
	return "index";
}


@RequestMapping(value="/login",method = RequestMethod.GET)
public ModelAndView getLoginForm(
		@RequestParam(required = false) String authfailed, String logout,Map<String, Object> map,
		String denied) {
	String message = "";
	if (authfailed != null) {
		message = "Invalid username and password, try again !";
	} else if (logout != null) {
		message = "Logged Out successfully, login again to continue !";
	} else if (denied != null) {
		message = "Access denied for this user !";
	}map.put("categoryList", categoryService.getAllcategory());
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

@RequestMapping("/viewall")
public String  all(Map<String, Object> map)
{
	map.put("categoryList", categoryService.getAllcategory());
return "viewall"; 
}




@RequestMapping("/light") //in angularjs we use this sony 
public @ResponseBody List<Products> prod()//spring will convert the productlist into JSON format
{
	/*map.put("productList", productService.getAllProduct());*/
	System.out.println("enter");
	return productService.getAllProduct();
}


@RequestMapping("/allproduct")
public String view(@RequestParam("val")String id,Map<String, Object> map)
{
	System.out.println("allproduct");
	map.put("categoryList", categoryService.getAllcategory());

	map.put("productList", productService.getAllProductfromcategory(id));
	return "allproduct";
}


@RequestMapping("/productdetails")
public String pro(@RequestParam("pdt")int id,@ModelAttribute(value = "product") Products product,Map<String, Object> map)
{
	System.out.println("me");//pdt values are stored in id
	Products pr=productService.getProduct(id);//using the id we are retrieving the product details.
	//Now that details are stored in the object pr
	
	System.out.println("rathika");
	map.put("product", pr);
	return "productdetails";
}

}
