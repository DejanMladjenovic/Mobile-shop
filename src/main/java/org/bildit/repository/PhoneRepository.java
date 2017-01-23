package org.bildit.repository;

import org.bildit.model.Phone;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("phoneRepository")
public interface PhoneRepository extends JpaRepository<Phone, Long>  {

}
