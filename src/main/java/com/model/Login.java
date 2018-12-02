package com.model;

/**
 * Model class for user login
 * 
 * @author group 14
 *
 */
public class Login {
	private String username;
	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = MD5.getMd5(password);
	}
}