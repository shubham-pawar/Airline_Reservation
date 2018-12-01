package com.service;

/**
 * Service Interface class to handle all services
 */
import java.util.List;

import com.model.Flight;
import com.model.Login;
import com.model.User;

public interface UserService {

	int register(User user);

	User validateUser(Login login);

	int add(Flight flight);

	List<Flight> searchFlight(Flight flight);

	int fogetUser(Login login);

}