package org.bildit.controller;

import javax.validation.Valid;

import org.bildit.model.Phone;
import org.bildit.service.PhoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PhoneController {
	
	@Autowired
	private PhoneService phoneService;
	
	@RequestMapping(value = "addPhone", method = RequestMethod.GET)
	public String toAddPhonePage(Phone phone, Model model) {
		model.addAttribute(phone);
		return "addPhone";
	}
	
	@RequestMapping(value = "addPhone", method = RequestMethod.POST)
	public String addPhone(@Valid Phone phone, BindingResult result,  Model model) {
		phone = phoneService.save(phone);
		model.addAttribute("screen", "Phone added successfully!");
		return "index";
	}
	
	@RequestMapping("/phone")
	public String get(@RequestParam("id") String id, Model model) {
		Phone phone = phoneService.getPhone(Long.parseLong(id));
		model.addAttribute("phone", phone);
		return "phone";
	}

}
