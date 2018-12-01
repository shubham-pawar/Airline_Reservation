package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Controller to handle No of passengers during booking process
 */
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookController {
	@RequestMapping(value = "/book", method = RequestMethod.GET)
	public ModelAndView load(HttpServletRequest request, HttpServletResponse response) {
			return new ModelAndView("NoOfPassengers");
	}

	@RequestMapping(value = "/seat")
	public ModelAndView seat(@RequestParam("sel") String value) {
		return new ModelAndView("SeatSelection", "msg", value);
	}
	@RequestMapping(value = "/payment", method = RequestMethod.GET)
	public ModelAndView payment(HttpServletRequest request, HttpServletResponse response) {
		return new ModelAndView("Payment");
		/*		ModelAndView mav =  new ModelAndView("Payment");
		mav.addObject("i");
*/	
	}
}