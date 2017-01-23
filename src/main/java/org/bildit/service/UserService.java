package org.bildit.service;

import org.bildit.model.User;

public interface UserService {

	User save(User user);

	User findByUsername(User user);

	User getUser(Long id);

}