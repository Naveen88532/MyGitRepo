package com.app.RealEstateApp.service;

import java.util.List;

import com.app.RealEstateApp.entity.Estate;

public interface EstateService {
	
	public Estate saveEstate(Estate estate);
	public void deleteEstate(int estateId);
	public void modifyEstate(Estate estate);
	public List<Estate> fetchEstateByLocation(String estateLocation);
	public List<Estate> fetchAllEstates();
	public Estate fetchEstateById(int estateId);
}
