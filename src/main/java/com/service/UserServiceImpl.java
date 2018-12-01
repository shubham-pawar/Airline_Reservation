package com.service;

/**
 * The implementation class of user service class 
 */
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserDao;
import com.model.Flight;
import com.model.Login;
import com.model.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	public UserDao userDao;

	public int register(User user) {
		return userDao.register(user);
	}

	public User validateUser(Login login) {
		return userDao.validateUser(login);
	}

	public int add(Flight flight) {
		return userDao.add(flight);
	}

	public List<Flight> searchFlight(Flight flight) {
		return userDao.searchFlight(flight);
	}

	public int fogetUser(Login login) {
		return userDao.forgetUser(login);
	}

}