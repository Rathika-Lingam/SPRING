package com.shop.controllers;



import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.shop.model.entity.Cartitems;
import com.shop.model.entity.Products;
import com.shop.model.service.CategoryService;
import com.shop.model.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;

	@Autowired
	private ServletContext servletContext;
	
	
	

	@RequestMapping("/product")
	public String setupForm(Map<String, Object> map) {
		Products product = new Products();
		map.put("product", product);
		map.put("productList", productService.getAllProduct());//to get the list of products
		map.put("categoryList", categoryService.getAllcategory());
		return "product";
	}
	
	@RequestMapping("/edit")
	public String edit(@RequestParam("val")int id,Map<String, Object> map) {
	Products product=productService.getProduct(id);
	map.put("product", product);
	map.put("productList", productService.getAllProduct());
	map.put("categoryList", categoryService.getAllcategory());
	return "product";
	
	}
	
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("val")int id,Map<String, Object> map) {
		productService.delete(id);
	return "viewall";
	}
	
	
	
//An @ModelAttribute on a method argument indicates the argument should be retrieved from the model.
	@RequestMapping(value = "/product.do", method = RequestMethod.POST)
	public String doActions(@Valid @ModelAttribute(value = "product") Products product, BindingResult result,
			@RequestParam("file") MultipartFile file,
			@RequestParam String action, Map<String, Object> map,ModelMap m) {
		
		if (result.hasErrors()) {
			System.out.println(result);   
			return "product";
		}

		
		Products productResult = new Products();

		switch (action.toLowerCase()) {
		case "add":
			productService.add(product);
			//image upload
			if (!file.isEmpty()) {
				try {
					byte[] bytes = file.getBytes();

					// Creating the directory to store file
					String rootPath = servletContext.getRealPath("/");
					File dir = new File(rootPath + File.separator + "resources/images");
					if (!dir.exists())
						dir.mkdirs();

					// Create the file on server
					File serverFile = new File(dir + File.separator + product.getImagename() + ".jpg");

					BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
					stream.write(bytes);
					stream.close();

					System.out.println(serverFile);

					productResult = product;
					
					m.addAttribute("message", "You successfully uploaded file");
					return "viewall";

				} catch (Exception e) {
					return "You failed to upload " + product.getImagename() + " => " + e.getMessage();
				}
			} 
				
				productResult = product;
			break;
		case "edit":
			System.out.println("edit");
			productService.edit(product);
			productResult = product;
			break;
		case "delete":
			productService.delete(product.getProductid());
			productResult = new Products();
			break;
		
		}
	map.put("product", productResult);
	map.put("productList", productService.getAllProduct());
	return "viewall";
		
	
}
	
/*public void updateproduct(List<Cartitems> cart)
	{		Products product = new Products();
			int id;
			for(int i=0;i<cart.size();i++)
			{	
				id=cart.get(i).getProduct().getProductid();
				product=productService.getProduct(id);
				product.setProductquantity(product.getProductquantity()-cart.get(i).getQuantity());
				productService.edit(product);
			}
	}
	

*/
}
