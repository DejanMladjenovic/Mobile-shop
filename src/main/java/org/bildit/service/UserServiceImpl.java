package org.bildit.service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.bildit.model.User;
import org.bildit.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public User save(User user) {
		User user1 = userRepository.findOneByUsernameOrEmail(user.getUsername(), user.getEmail());
		if(user1 == null){
			userRepository.saveAndFlush(user);
			return null;
		} else {
			if(user1.getUsername().equals(user.getUsername())){
				user.setUsername("");
			}
			if(user1.getEmail().equals(user.getEmail())){
				user.setEmail("");
			}
			return user;
		}
	}
	
	@Override
	public User getUser(Long id) {
		return userRepository.findOne(id);
	}
	
	@Override
	public User findByUsername(User user) {
		User user1 = userRepository.findByUsername(user.getUsername());
		if(user1 == null) {
			user.setUsername("");
			return user;
		} else if (!user.getPassword().equals(user1.getPassword())) {
			user.setPassword("");
			return user;
		}
		return user1;
	}
	
}
