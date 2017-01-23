package org.bildit.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="addresses")
public class Address {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@NotEmpty
	private String city;
	
	@NotEmpty
	private String street;

	@NotNull
	private Long houseNumber;

	@NotEmpty
	private String country;

	@NotNull
	private Long zip;
	
	@Transient
	private Set<User> users;
	
	public String getCity() {
		return city;
	}

	public String getCountry() {
		return country;
	}
	
	public Long getHouseNumber() {
		return houseNumber;
	}

	public Long getId() {
		return id;
	}

	public String getStreet() {
		return street;
	}
	
	public Set<User> getUsers() {
		return users;
	}
	
	public Long getZip() {
		return zip;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public void setHouseNumber(Long houseNumber) {
		this.houseNumber = houseNumber;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setState(String country) {
		this.country = country;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

	public void setZip(Long zip) {
		this.zip = zip;
	}
	
}