package com.shop.controllers;



import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


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
		map.put("productList", productService.getAllProduct());
		map.put("categoryList", categoryService.getAllcategory());
		return "product";
	}


	@RequestMapping(value = "/product.do", method = RequestMethod.POST)
	public String doActions(@ModelAttribute(value = "product") Products product, BindingResult result,
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
				productResult = product;
			break;
		case "edit":
			productService.edit(product);
			productResult = product;
			break;
		case "delete":
			productService.delete(product.getProductid());
			productResult = new Products();
			break;
		case "search":
			Products searchedProduct = productService.getProduct(product.getProductid());
			productResult = searchedProduct != null ? searchedProduct : new Products();
			break;
			
		}
		
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
				map.put("product", productResult);
				map.put("productList", productService.getAllProduct());
				m.addAttribute("message", "You successfully uploaded file");
				return "list";

			} catch (Exception e) {
				return "You failed to upload " + product.getImagename() + " => " + e.getMessage();
			}
		} else {
			return "You failed to upload " + product.getImagename() + " because the file was empty.";
		}		
}

	}
			


