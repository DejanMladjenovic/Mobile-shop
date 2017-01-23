package org.bildit.controller;

import java.util.List;

import org.bildit.model.Phone;
import org.bildit.service.PhoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

@RestController
@SessionAttributes("phones")
public class GetPhonesController {
	
	@Autowired
	private PhoneService phoneService;
	
	@RequestMapping("/phones")
	public void get(Model model) {
		List<Phone> phones = phoneService.getAllPhones();
		model.addAttribute("phones", phones);
	}
	
	

}
