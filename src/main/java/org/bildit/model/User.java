package org.bildit.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.Valid;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "users")
public class User {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@NotBlank(message = "Must not be blank.")
	@Pattern(regexp="[a-zA-Z]+", message="Only letters")
	private String firstName;

	@NotEmpty
	@Pattern(regexp="[a-zA-Z]+", message="Only letters")
	private String lastName;

	@NotEmpty
	@Size(min=4, max=20, message="Username must be between 4 and 20 chars")
	@Column(unique=true, name="username")
	private String username;

	@NotEmpty
	@Size(min=4, max=20, message="Password must have at least 5 chars")
	private String password;
	
	@Email
	@NotEmpty
	@Column(unique=true, name="email")
	private String email;

	private String number;

	@ManyToOne(cascade=CascadeType.ALL)
	@Fetch(FetchMode.JOIN)
	@Valid
	private Address address;

	public Address getAddress() {
		return address;
	}

	public String getEmail() {
		return email;
	}

	public String getFirstName() {
		return firstName;
	}

	public Long getId() {
		return id;
	}

	public String getLastName() {
		return lastName;
	}

	public String getNumber() {
		return number;
	}

	public String getPassword() {
		return password;
	}

	public String getUsername() {
		return username;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}