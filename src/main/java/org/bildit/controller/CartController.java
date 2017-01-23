package org.bildit.controller;

import java.util.LinkedHashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.bildit.model.Phone;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CartController {
	
	@RequestMapping("cart")
	public String toCartPage() {
		return "cart";
	}
	
	@RequestMapping("add")
	public String add(@RequestParam(value="id", required=false) Long id, HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
	    LinkedHashMap<Phone, Integer> map = (LinkedHashMap<Phone, Integer>) request.getSession().getAttribute("cart");
	    
	    if(map == null){
	    	map = new LinkedHashMap<>();
	    	request.getSession().setAttribute("cart", map);
	    }
		
		List<Phone> list = (List<Phone>) session.getAttribute("phones");
		for (Phone phone : list) {
			if (phone.getId() == id){
				if(!map.containsKey(phone)){
					map.put(phone, 1);
				} else{
					int value = map.get(phone);
					value++;
					map.put(phone, value);
				}
			}
		}
		model.addAttribute("screen", "Phone added to cart!");
		return "index";
	}
	
	@RequestMapping("remove")
	public String remove(@RequestParam(value="id") Long id, HttpServletRequest request) {
		HttpSession session = request.getSession();
	    LinkedHashMap<Phone, Integer> map = (LinkedHashMap<Phone, Integer>) request.getSession().getAttribute("cart");

		List<Phone> list = (List<Phone>) session.getAttribute("phones");
		for (Phone phone : map.keySet()) {
			if (phone.getId() == id){
				int value = map.get(phone);
				if(value > 1){
					value--;
					map.put(phone, value);
				} else {
					map.remove(phone);
				}
			}
		}

		return "redirect: cart";
	}
	
	@RequestMapping("checkout")
	public String checkout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		LinkedHashMap<Phone, Integer> map = (LinkedHashMap<Phone, Integer>) request.getSession().getAttribute("cart");
		
		return "index";
	}

}
