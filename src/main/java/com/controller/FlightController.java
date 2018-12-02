package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.Flight;
//import com.model.User;
import com.service.UserService;

@Controller
public class FlightController {
	@Autowired
	public UserService userService;

	/**
	 * 
	 * @return ModelAndView object
	 */
	@RequestMapping(value = "/addflight", method = RequestMethod.GET)
	public ModelAndView addflight() {
		return new ModelAndView("Display");
	}

	/**
	 * 
	 * @return ModelAndView object
	 */
	@RequestMapping(value = "/back", method = RequestMethod.GET)
	public ModelAndView back() {
		return new ModelAndView("admin");
	}

	/**
	 * 
	 * @param request
	 * @param response
	 * @return mav object 
	 */
	@RequestMapping(value = "/FlightDetails", method = RequestMethod.GET)
	public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("FlightDetails");
		mav.addObject("Flight", new Flight());
		return mav;
	}

	/**
	 * 
	 * @param request
	 * @param response
	 * @param flight
	 * @return ModelAndView object to admin page
	 */
	@RequestMapping(value = "/addProcess", method = RequestMethod.POST)
	public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("flight") Flight flight) {
		userService.add(flight);
		return new ModelAndView("admin");

	}
}
