package com.app.RealEstateApp.exception;

public class EstateNotFoundException extends RuntimeException{
	
	private static final long serialVersionUID = 1L;
	public EstateNotFoundException() {
		
	}
	public EstateNotFoundException(String message) {
		super(message);
	}
	
}
