package com.app.RealEstateApp.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice 
public class CustomGlobalExceptionHandler {
	
	@ExceptionHandler(value = DuplicateEstateException.class)
	public ModelAndView duplicateEstateException(DuplicateEstateException e) {
		final ModelAndView modelAndView = new ModelAndView();
		 modelAndView.addObject("ref", e.getEstate().getEstateId());
		 modelAndView.addObject("message", "Cannot add Estate is already existing with id: "+e.getEstate().getEstateId());
	        modelAndView.setViewName("error-estate");
	        return modelAndView;
	}
	
	@ExceptionHandler(value = EstateNotFoundException.class)
	public ModelAndView estateNotFoundException(EstateNotFoundException e) {
		final ModelAndView modelAndView = new ModelAndView();
		 modelAndView.addObject("ref", e.getEstateId());
		 modelAndView.addObject("message",e.getMessage());
	        modelAndView.setViewName("error-estate");
	        return modelAndView;
	}
	
}
