package com.shop.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	
/*	@RequestMapping("/addtocart")
	public String  cart()
	{
		Cartitems cart=new Cartitems();
		cs.add(cart);
	return "cart"; 
		}
*/	
	
	@RequestMapping("/cart")
	public String getcart(@RequestParam("value")int id,Map<String,Object> map )
	{
		Cartitems cart=new Cartitems();
		Products pr=productService.getProduct(id);
		cart.setQuantity("1");
		cart.setTotal(pr.getProductprice());
		cart.setProduct(pr);//foreign key of Productid

		
		cs.add(cart);
		/*map.addAttribute("cart", cart);*/
		map.put("cartList", cs.getAllCartitems());
		
	return "cart";
	}
	


}
