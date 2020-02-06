package com.mindtree.travelbooking.controller;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mindtree.travelbooking.entity.Booking;
import com.mindtree.travelbooking.entity.User;
import com.mindtree.travelbooking.exceptions.ServiceException;
import com.mindtree.travelbooking.exceptions.TravelbookingException;
import com.mindtree.travelbooking.service.TravelbookingService;

@Controller
public class AppController {

	@Autowired
	TravelbookingService travelbookingServiceImpl;
	
	Booking b=new Booking();

	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@RequestMapping("/adduser")
	public String addUser() {
		return "registration";
	}

	@RequestMapping("/submitdetails")
	public String submitUser(User users) {
		travelbookingServiceImpl.addUser(users);
		return "index";
	}

	@RequestMapping("/booking")
	public String getUsers(Model model) {
		model.addAttribute("users", travelbookingServiceImpl.getUsers());
		return "booking";

	}

	@RequestMapping("/addBooking")
	public String addBooking(@RequestParam int userId, @ModelAttribute Booking booking) {

		travelbookingServiceImpl.addBooking(userId, booking);

		return "index";
	}

	@RequestMapping("/viewData")
	public String getBooking(Model model) {

		model.addAttribute("users", travelbookingServiceImpl.getUsers());
		return "view-details";
	}
	
	@RequestMapping("/getBookingDetails")
	public String getBookingDetails(int userId, Model model, Date dateOfJourney ) throws TravelbookingException {
		
		try {
			model.addAttribute("bookings", travelbookingServiceImpl.getBookingDetails(userId, dateOfJourney));
		} catch (ServiceException e) {
			throw new TravelbookingException(e.getMessage());
		}
		return "view-details";
	}
	
	@RequestMapping("/update/{bookingId}")
	public String updateDetails(@PathVariable int bookingId,Model model)
	{
		Booking savedbookings=travelbookingServiceImpl.updateDetails(bookingId);
		b=savedbookings;
		System.err.println(b.toString());
		model.addAttribute("savedbookings",savedbookings);
		return "update";
	}
	
	@RequestMapping(value = "/updateDetails", method = RequestMethod.POST)
	public String updateBooking(Model model, @RequestParam String formAddress,@RequestParam String toAddress,@RequestParam int distance)
	{
		travelbookingServiceImpl.updateBooking(b,formAddress,toAddress,distance);
		return "view-details";
	}
	

	
	
	
	
	
	

}
