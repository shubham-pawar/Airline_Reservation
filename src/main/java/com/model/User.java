package com.model;

/**
 * Model class for user registration
 * @author group 14
 *
 */
public class User {

	private int pid;
	private String title;
	private String fname;
	private String lname;
	private String email;
	private String password;
	private String phone;

	public User() {
		super();
	}

	public User(int pid, String title, String fname, String lname, String email, String password, String phone) {
		super();
		this.pid = pid;
		this.title = title;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.password = password;
		this.phone = phone;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = MD5.getMd5(password);
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}
