package com.app.RealEstateApp.exception;

import com.app.RealEstateApp.entity.Estate;

public class EstateNotFoundException extends RuntimeException {

	private static final long serialVersionUID = 1L;

	private Estate estate;
	private int estateId;
	private String message;

	public EstateNotFoundException(int estateId) {
		this.estateId= estateId;
	}
	
	public EstateNotFoundException(Estate estate) {
		this.estate= estate;
	}
	
	public EstateNotFoundException(String message) {
		super(message);
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public int getEstateId() {
		return estateId;
	}

	public Estate getEstate() {
		return estate;
	}

}
