package com.shop.controllers;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.model.entity.Category;
import com.shop.model.service.CategoryService;



@Controller
public class CategoryController {
	@Autowired(required=true)
     private CategoryService categoryService;
	
	
	@RequestMapping("/category")
	public String setupForm(Map<String, Object> map){
		Category category = new Category();
		map.put("category", category);
		map.put("categoryList", categoryService.getAllcategory());
		return "category";
	}
	
	@RequestMapping(value="/category.do", method=RequestMethod.POST)
	public String doActions(@ModelAttribute(value="category") Category category, BindingResult result, @RequestParam String action, Map<String, Object> map){
		Category categoryResult = new Category();
		switch(action.toLowerCase()){	
		case "add":
			categoryService.add(category);
			categoryResult = category;
			break;
		case "edit":
			categoryService.edit(category);
			categoryResult = category;
			break;
		case "delete":
			categoryService.delete(category.getCategoryid());
			categoryResult = new Category();
			break;
		case "search":
			Category searchedcategory = categoryService.getcategory(category.getCategoryid());
			categoryResult = searchedcategory!=null ? searchedcategory : new Category();
			break;
		}
		map.put("category", categoryResult);
		map.put("categoryList", categoryService.getAllcategory());
		return "categorylist";
	}

	@RequestMapping("categorylist")
	public String getList() {
		List categoryList = categoryService.getAllcategory();
		return "categorylist";
		/* return new ModelAndView("list", "registerList",registerList); */
	}

}
