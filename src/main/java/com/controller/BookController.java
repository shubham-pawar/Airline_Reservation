package com.controller;

import java.util.HashMap;
import java.util.Map;

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

import com.model.Seat;

@Controller
public class BookController {
	/**
	 * 
	 * @param request
	 * @param response
	 * @return to NoOfPassengers page
	 */
	@RequestMapping(value = "/book", method = RequestMethod.GET)
	public ModelAndView load(HttpServletRequest request, HttpServletResponse response) {
		return new ModelAndView("NoOfPassengers");
	}

	/**
	 * 
	 * @param value
	 * @return ModelAndView object and value to SeatSelection page
	 */
	@RequestMapping(value = "/seat")
	public ModelAndView seat(@RequestParam("sel") String value) {
		Seat seat=new Seat();
		ModelAndView mv = new ModelAndView("seat");
		mv.addObject("seat",seat);
		Map<String, String> availableSocialProfiles = new HashMap<String, String>();
		availableSocialProfiles.put("linkedin", "LinkedIN");
		availableSocialProfiles.put("facebook", "FaceBook");
		availableSocialProfiles.put("twitter", "Twitter");
		availableSocialProfiles.put("google+", "Google Plus");
		
		mv.addObject("availableSocialProfiles", availableSocialProfiles);
		mv.addObject("msg",value);
		mv.setViewName("SeatSelection");
		return mv;
		/*return new ModelAndView("SeatSelection", "msg", value);*/
	}

	/**
	 * 
	 * @param request
	 * @param response
	 * @return ModelAndView object to Payment page
	 */
	@RequestMapping(value = "/payment")
	public ModelAndView payment(@RequestParam("chkbox") int inp) {
		Seat seat=new Seat();
		ModelAndView mv = new ModelAndView("seat");
		mv.addObject("seat",seat);
		Map<String, String> availableSocialProfiles = new HashMap<String, String>();
		availableSocialProfiles.put("linkedin", "LinkedIN");
		availableSocialProfiles.put("facebook", "FaceBook");
		availableSocialProfiles.put("twitter", "Twitter");
		availableSocialProfiles.put("google+", "Google Plus");
		mv.addObject("availableSocialProfiles", availableSocialProfiles);
		mv.setViewName("Payment");
		System.out.println("nuumber:"+inp);
		return mv;
		
		/*
		 * ModelAndView mav = new ModelAndView("Payment"); mav.addObject("i");
		 */
	}
}
