package com.shop.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
/*@RequestMapping("/login")
public String move()
{
	return "login";
}
*/

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



@RequestMapping("/user")
public String move1()
{
	return "user";
}

@RequestMapping("/admin")
public String move2()
{
	return "admin";
}



@RequestMapping("/viewall")
public String prod(Map<String, Object> map)
{
	map.put("productList", productService.getAllProduct());
	return "viewall";
}


@RequestMapping("/allproduct")
public String view(@RequestParam("val")String id,Map<String, Object> map)
{
	System.out.println("allproduct");
	map.put("productList", productService.getAllProductfromcategory(id));
	return "allproduct";
}


}
