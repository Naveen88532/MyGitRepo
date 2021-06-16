package com.app.RealEstateApp.exception;

import com.app.RealEstateApp.entity.Estate;

public class EstateNotFoundException extends RuntimeException {

	private static final long serialVersionUID = 1L;
	private int estateId;
	private String message;

	public EstateNotFoundException(String message, int estateId) {
	    this.estateId= estateId;
	    this.message= message;
	}

	public EstateNotFoundException(String message) {
		super(message);
	}

	public EstateNotFoundException(Estate estate) {
		
	}

	public int getEstateId() {
		return estateId;
	}

	public String getMessage() {
		return message;
	}	
}
