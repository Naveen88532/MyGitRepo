package com.app.RealEstateApp.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.app.RealEstateApp.entity.Estate;

public interface EstateRepository extends JpaRepository<Estate, Integer> {

public List<Estate> findByEstateLocation(String estatelocation);
	
	@Query(value = "Select e from Estate e where e.estateLocation= ?1")
	public List<Estate> getAllEstatesInOrderByLocation(String estateLocation);
}
