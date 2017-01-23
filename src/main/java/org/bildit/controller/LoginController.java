package org.bildit.controller;

import org.bildit.model.User;
import org.bildit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("sessionUser")
public class LoginController {
	
	@Autowired
	private UserService userService;

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String toRegisterPage(User user, Model model) {
		model.addAttribute(user);
		return "login";
	}
	
	@RequestMapping(value="login", method = RequestMethod.POST)
	public String registerUser(@ModelAttribute("user") User user, BindingResult result, Model model) {
	
		model.addAttribute("user", user);		
		user = userService.findByUsername(user);
		if(user.getUsername().equals("")) {
			result.rejectValue("username", "error.user.username", "Username doesn't exists!");
			return "login";
		} else if(user.getPassword().equals("")) {
			result.rejectValue("password", "error.user.password", "Password incorrect!");
			return "login";
		}
		model.addAttribute("sessionUser", user);		
		return "redirect:index.html";
	}

}
