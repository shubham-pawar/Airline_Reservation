package com.dao;

/**
 *  DAO interface class to handle all function calls
 */
import java.util.List;

import com.model.Flight;
import com.model.Login;
import com.model.User;

public interface UserDao {
	int register(User user);

	User validateUser(Login login);

	int add(Flight flight);

	public List<Flight> list();

	List<Flight> searchFlight(Flight flight);

	int forgetUser(Login login);

}
