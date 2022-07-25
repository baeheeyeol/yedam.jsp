package com.txt.common;

import java.sql.Date;

public class Employee {
	private int employeeId;
	private String firstName;
	private String lastName;
	private String email;
	private int salary;
	private Date hiredate;
	private String jogId;
	
	
	public Date getHiredate() {
		return hiredate;
	}
	public void setHiredate(Date date) {
		this.hiredate = date;
	}
	public String getJogId() {
		return jogId;
	}
	public void setJogId(String jogId) {
		this.jogId = jogId;
	}
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
}
