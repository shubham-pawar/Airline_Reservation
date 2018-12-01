package com.controller;

/**
 * Controller handle the search process and display searched flights on select flight jsp
 */
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.Flight;
import com.service.UserService;

@Controller
public class SearchController {
	@Autowired
	UserService userService;

	@RequestMapping(value = "/flight", method = RequestMethod.GET)
	public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("flight");
		mav.addObject("flight", new Flight());
		return mav;
	}

	@RequestMapping(value = "/searchProcess", method = RequestMethod.GET)
	public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("flight") Flight flight) {
		ModelAndView mav = null;
		List<Flight> flight1 = userService.searchFlight(flight);
		if (null != flight1) {
			mav = new ModelAndView("selectFlight");
			mav.addObject("wel", "hello");
			mav.addObject("FlightData", flight1);
		} else {
			mav = new ModelAndView("flightSearchError");
			mav.addObject("message", "No flight available....!!");
		}
		return mav;
	}
}