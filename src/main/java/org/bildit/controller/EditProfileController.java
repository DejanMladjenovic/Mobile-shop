package org.bildit.controller;

import javax.validation.Valid;

import org.bildit.model.User;
import org.bildit.repository.UserRepository;
import org.bildit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class EditProfileController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private UserRepository userRepository;
	
	@RequestMapping(value = "editProfile")
	public String toEditProfilePage(@SessionAttribute User sessionUser, Model model) {
		model.addAttribute("user", sessionUser);
		return "editProfile";
	}
	
	@RequestMapping(value = "editProfile" , method = RequestMethod.POST)
	public String editProfile(@Valid User user, BindingResult result, Model model) {
		model.addAttribute("user", user);		
		if(result.hasErrors()) {
			return "register";
		} else {
		
			return "userProfile";
		}
	}

}
