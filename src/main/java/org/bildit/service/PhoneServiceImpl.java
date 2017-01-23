package org.bildit.service;

import java.util.List;

import org.bildit.model.Phone;
import org.bildit.repository.PhoneRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("phoneService")
public class PhoneServiceImpl implements PhoneService {
	
	@Autowired
	private PhoneRepository phoneRepository;
	
	@Override
	public Phone save(Phone phone) {
		return phoneRepository.saveAndFlush(phone);
	}
	
	@Override
	public List<Phone> getAllPhones() {
		return phoneRepository.findAll();
	}
	
	@Override
	public Phone getPhone(Long id) {
		return phoneRepository.findOne(id);
	}
	

	
}
