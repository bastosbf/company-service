package com.bastosbf.company.service.rest;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import com.bastosbf.company.service.model.Company;

@Path("/company")
public class CompanyRESTOperation {

	// static variable for not using a database
	private static List<Company> companies;

	static {
		companies = new ArrayList<Company>();
	}

	private boolean validate(String str) {
		return str != null && !str.isEmpty();
	}

	private boolean validate(String... parameters) {
		boolean result = true;
		for (String param : parameters) {
			result = result && validate(param);
		}
		return result;
	}

	// will add a company and return its id as a string
	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/add")
	public String add(@QueryParam("name") String name, @QueryParam("address") String address, @QueryParam("city") String city, @QueryParam("country") String country, @QueryParam("email") String email, @QueryParam("phone") String phone, @QueryParam("employees") String employees) {

		if (!validate(name, address, city, country, employees)) {
			return "-1";
		}

		// generates a sequential id
		int id = companies.size() + 1;
		Company company = new Company();
		company.setId(id);
		company.setName(name);
		company.setAddress(address);
		company.setCity(city);
		company.setCountry(country);
		company.setEmail(email);
		company.setPhone(phone);
		//convert comma separated employees to list
		String[] data = employees.split(",");
		for(String employee : data) {
			company.addEmplyee(employee);
		}

		companies.add(company);
		return String.valueOf(id);

	}

	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/list")
	public List<Company> list() {
		return companies;
	}

	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/get")
	public Company get(@QueryParam("id") int id) {
		int index = companies.indexOf(new Company(id));
		if (index >= 0) {
			return companies.get(index);
		}
		return null;
	}

	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/update")
	public String update(@QueryParam("id") int id, @QueryParam("name") String name, @QueryParam("address") String address, @QueryParam("city") String city, @QueryParam("country") String country, @QueryParam("email") String email, @QueryParam("phone") String phone) {

		int index = companies.indexOf(new Company(id));
		if (index < 0 || !validate(name, address, city, country)) {
			return String.valueOf(Boolean.FALSE);
		}

		Company company = companies.get(index);
		company.setName(name);
		company.setAddress(address);
		company.setCity(city);
		company.setCountry(country);
		company.setEmail(email);
		company.setPhone(phone);

		return String.valueOf(Boolean.TRUE);
	}

	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/add-owner")
	public String addOwner(@QueryParam("company-id") int id, @QueryParam("owner-name") String owner) {

		int index = companies.indexOf(new Company(id));
		if (index < 0) {
			return String.valueOf(Boolean.FALSE);
		}

		Company company = companies.get(index);
		company.addOwner(owner);
		return String.valueOf(Boolean.TRUE);
	}

	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/add-employee")
	public String addEmployee(@QueryParam("company-id") int id, @QueryParam("employee-name") String employee) {

		int index = companies.indexOf(new Company(id));
		if (index < 0) {
			return String.valueOf(Boolean.FALSE);
		}

		Company company = companies.get(index);
		company.addEmplyee(employee);
		return String.valueOf(Boolean.TRUE);
	}

}
