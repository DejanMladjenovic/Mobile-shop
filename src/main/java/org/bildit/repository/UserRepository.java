package org.bildit.repository;

import org.bildit.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("userRepository")
public interface UserRepository extends JpaRepository<User, Long>  {

	User findOneByUsernameOrEmail(String username, String email);
	User findByUsername(String username);
}
