package org.bildit.service;

import java.util.List;

import org.bildit.model.Phone;

public interface PhoneService {

	Phone save(Phone phone);
	
	List<Phone> getAllPhones();

	Phone getPhone(Long id);


	

}