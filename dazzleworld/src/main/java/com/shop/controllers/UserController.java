package com.shop.controllers;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.model.entity.Role;
import com.shop.model.entity.User;
import com.shop.model.service.UserService;

@Controller
public class UserController {
@Autowired
UserService us;


@ModelAttribute("user")
public User  bind(){
	return new User();
}

@RequestMapping("/register")
public String setupregForm(Map<String, Object> map){
		return "register";
}
@RequestMapping(value="/user.do", method=RequestMethod.POST)
public String doregActions(@Valid @ModelAttribute(value="user") User user, BindingResult result, @RequestParam String action,Map<String, Object> map){
	
	if(result.hasErrors()){
        return "register";
    }
	switch(action.toLowerCase()){	
	case "register":
		Role role=new Role();
		role.setUserrole("ROLE_USER");
        role.setUid(user);
		user.setEnabled(true);
		
		us.add(user);
        us.addRole(role);
		break;
	case "edit":
		us.edit(user);
		break;
	}
	
	
	return "register";
}
}



/*@RequestMapping("/register")
public ModelAndView getForm(@ModelAttribute("user") User user) {
 return new ModelAndView("register");
}

@RequestMapping("user.do")
public ModelAndView user(@ModelAttribute("user") User user) {
 us.addUser(user);
 return new ModelAndView("register");
*/

