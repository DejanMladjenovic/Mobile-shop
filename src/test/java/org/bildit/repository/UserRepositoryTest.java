package org.bildit.repository;

import static org.junit.Assert.assertEquals;

import org.bildit.model.User;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.TestComponent;

@TestComponent
public class UserRepositoryTest {

	@Autowired
	private UserRepository userRepository;
	
	@Test
	public void testFindOneByUsernameOrEmail() {
		
	}

}
