package org.bildit.controller;

import javax.validation.Valid;

import org.bildit.model.User;
import org.bildit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RegisterController {
	
	@Autowired
	private UserService userService;

	@RequestMapping(value = "register")
	public String toRegisterPage(User user, Model model) {
		model.addAttribute(user);
		return "register";
	}
	
	@RequestMapping(value="register", method = RequestMethod.POST)
	public String registerUser(@Valid User user, BindingResult result, Model model) {
		model.addAttribute("user", user);		
		if(result.hasErrors()) {
			return "register";
		} else {
			user = userService.save(user);
			if(user == null) {
				model.addAttribute("screen", "Registration successful! Please login!");
				return "redirect:login.html";
			}
			if(user.getEmail().equals("")){
				result.rejectValue("email", "error.user.email", "An account already exists for this email.");
			}
			if(user.getUsername().equals("")){
				result.rejectValue("username", "error.user.username", "An account already exists for this username.");
			}
			return "register";
		}
	}

}
