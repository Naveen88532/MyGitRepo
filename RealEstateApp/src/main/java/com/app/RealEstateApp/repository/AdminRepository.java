package com.app.RealEstateApp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.app.RealEstateApp.entity.Admin;

public interface AdminRepository extends JpaRepository<Admin, Integer>{
	
}
