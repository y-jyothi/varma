package com.mindtree.travelbooking.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.mindtree.travelbooking.exceptions.TravelbookingException;

@ControllerAdvice
public class ControllerHandler {
	
	@ExceptionHandler
	public String serviceExceptionHandler(HttpServletRequest req,TravelbookingException e,Model model)
	{
		
		model.addAttribute("alert",e.getMessage());
		return "view-details";
		
	}

}
