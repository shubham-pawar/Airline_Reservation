package com.controller;

/**
 * Admin controller to handle flow of data.
 */
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.UserDao;
import com.model.Flight;
import com.model.Login;
import com.model.User;
import com.service.UserService;;

@Controller
public class AdminController {
	@Autowired
	private UserDao userDao;
	@Autowired
	UserService userService;
	private HttpServletRequest request;
	@RequestMapping(value = "/addflight1", method = RequestMethod.GET)
	public ModelAndView addflight1() {
		return new ModelAndView("FlightDetails");
	}

	@RequestMapping(value = "/viewflight")
	public ModelAndView listFlight(ModelAndView model) throws IOException {
		List<Flight> listFlight = userDao.list();
		model.addObject("message", "Welcome to spring");
		model.addObject("listFlight", listFlight);
		model.setViewName("DisplayFlight");
		return model;
	}

	@RequestMapping(value = "/adminlogin", method = RequestMethod.GET)
	public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("adminlogin");
		mav.addObject("user", new User());
		return mav;
	}

	@RequestMapping(value = "/adminloginProcess", method = RequestMethod.POST)
	public ModelAndView adminlogin(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("login") Login login) {
		System.out.println("in admimlogincon");
		ModelAndView mv = null;
		User user = userService.validateUser(login);
		
		//System.out.println("in admimlogincon"+user.getFname()+"\t"+user.getPassword());
		if (null != user) {
			mv = new ModelAndView("admin");
			HttpSession session=request.getSession(true);
			session.setAttribute("user", user.getFname());
			return mv;
		} else {
			mv = new ModelAndView("loginerror");
			mv.addObject("message", "<h1>Username or Password is wrong!!</h1>");
		} 
		return mv;
		/* return new ModelAndView("welcome", "firstname", user.getFname()); */
	}

	@RequestMapping(value = "/load", method = RequestMethod.GET)
	public ModelAndView load(HttpServletRequest request, HttpServletResponse response) {
		return new ModelAndView("Loading");
	}
	
	@RequestMapping(value = "/forget")
	public ModelAndView forget() {
		return new ModelAndView("forget");
	}
	

}