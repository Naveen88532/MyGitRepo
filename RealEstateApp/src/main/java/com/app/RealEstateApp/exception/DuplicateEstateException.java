package com.app.RealEstateApp.exception;

import com.app.RealEstateApp.entity.Estate;

public class DuplicateEstateException extends RuntimeException {

	private static final long serialVersionUID = 1L;
	private Estate estate;
	private String message;

	public DuplicateEstateException(String message) {
		super(message);
	}

	public DuplicateEstateException(Estate estate) {
		this.estate = estate;
	}

	public Estate getEstate() {
		return estate;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
