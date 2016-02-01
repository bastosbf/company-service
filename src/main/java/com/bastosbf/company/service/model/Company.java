package com.bastosbf.company.service.model;

import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Company {

	private Integer id;
	private String name;
	private String address;
	private String city;
	private String country;
	private String email;
	private String phone;
	private List<String> owners;
	private List<String> employees;

	public Company() {
		employees = new ArrayList<String>();
		owners = new ArrayList<String>();
	}

	public Company(int id) {
		this();
		this.id = id;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public List<String> getEmployees() {
		return employees;
	}

	public void setEmployees(List<String> employees) {
		this.employees = employees;
	}

	public void addEmplyee(String employee) {
		if (!employees.contains(employee)) {
			this.employees.add(employee);
		}
	}

	public List<String> getOwners() {
		return owners;
	}

	public void setOwners(List<String> owners) {
		this.owners = owners;
	}

	public void addOwner(String owner) {
		if (!owners.contains(owner)) {
			this.owners.add(owner);
		}
	}

	@Override
	public boolean equals(Object obj) {
		if (obj instanceof Company) {
			return id == ((Company) obj).id;
		}
		return false;
	}

	@Override
	public int hashCode() {
		return id;
	}

}
