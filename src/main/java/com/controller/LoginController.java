package com.controller;

/**
 *  Controller to handle user login process
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.Login;
import com.model.User;
import com.service.UserService;

@Controller
public class LoginController {
	@Autowired
	UserService userService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("login");
		mav.addObject("login", new Login());
		return mav;
	}

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("login") Login login) {
		ModelAndView mav = null;
		User user = userService.validateUser(login);
		if (null != user) {
			mav = new ModelAndView("index2");
			HttpSession session=request.getSession(true);
			session.setAttribute("user", user.getFname());
			// mav.addObject("firstname", user.getFname());
			return mav;

		} else {
			mav = new ModelAndView("loginerror");
			mav.addObject("message", "Username or Password is wrong!!");
		}
		return mav;
	}
	@RequestMapping(value = "/logout")
	public ModelAndView Logout(HttpServletRequest request) {
		HttpSession session= request.getSession(true);
		session.removeAttribute("user");
		session.invalidate();
		return new ModelAndView("login");
		}
	
	@RequestMapping(value = "/ForgetProcess", method = RequestMethod.POST)
	public ModelAndView ForgetProcess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("login") Login login) {
		ModelAndView mav = null;
		int user = userService.fogetUser(login);
			mav = new ModelAndView("login");
						
			return mav;
		
	}
	
}