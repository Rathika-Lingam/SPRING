package com.shop.model.entity;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;


import com.shop.model.service.UserService;


@Component
public class DemoHandler {
	
	@Autowired
	private UserService us;

	
	
	public User initFlow(){
		return new User();
	}
	
	
	public String validateDetails(User user,MessageContext messageContext){
		String status = "success";
		
		if(user.getUsername().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"username").defaultText("Username cannot be Empty").build());
			status = "failure";
		}
		if(user.getPhonenumber().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"phonenumber").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		if(user.getEmail().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("phone number cannot be Empty").build());
			status = "failure";
		}
		if(user.getPassword().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"password").defaultText(" cannot be Empty").build());
			status = "failure";
		}
		if(user.getConfirmpassword().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"confirmpassword").defaultText(" cannot be Empty").build());
			status = "failure";
		}
		Role role=new Role();
		role.setUserrole("ROLE_USER");
        role.setUid(user);
		user.setEnabled(true);
			
		us.add(user);
		  us.addRole(role);
				return status;
		
	}
}
