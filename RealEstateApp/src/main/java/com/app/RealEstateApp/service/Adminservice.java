package com.app.RealEstateApp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.RealEstateApp.entity.Admin;
import com.app.RealEstateApp.repository.AdminRepository;

@Service
public class Adminservice{

	@Autowired
	private AdminRepository adminRepository;
	
	public boolean verifyAdmin(Admin admin) {
			Admin db = adminRepository.getById(1);
			if(db.getUserName().equals(admin.getUserName()) && db.getPassword().equals(admin.getPassword()))
				return true;
			return false;
		}
}
