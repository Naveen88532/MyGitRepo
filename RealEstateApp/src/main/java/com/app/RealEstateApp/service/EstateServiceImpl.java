package com.app.RealEstateApp.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.RealEstateApp.entity.Estate;
import com.app.RealEstateApp.exception.DuplicateEstateException;
import com.app.RealEstateApp.exception.EstateNotFoundException;
import com.app.RealEstateApp.repository.EstateRepository;

@Service
public class EstateServiceImpl implements EstateService {

	@Autowired
	EstateRepository estateRepository;

	@Transactional
	@Override
	public Estate saveEstate(Estate estate) {
		Optional<Estate> estateObj = estateRepository.findById(estate.getEstateId());
		if (estateObj.isPresent()) {
			throw new DuplicateEstateException(estate);

		}
		return estateRepository.save(estate);
	}

	@Transactional
	@Override
	public void deleteEstate(int estateId) {
		Optional<Estate> estateObj = estateRepository.findById(estateId);
		if (!estateObj.isPresent()) {
			throw new EstateNotFoundException(estateId);
		}
		estateRepository.deleteById(estateId);
	}

	@Override
	public void modifyEstate(Estate estate) {
		Optional<Estate> estateObj = estateRepository.findById(estate.getEstateId());
		if (!estateObj.isPresent()) {
			throw new EstateNotFoundException(estate);

		}
		estateRepository.save(estate);
	}

	@Override
	public Estate fetchEstateById(int estateId) {
		Optional<Estate> estate = estateRepository.findById(estateId);
		if (estate.isEmpty()) {
			throw new EstateNotFoundException("Estate not exsisting with id: " + estateId);
		}
		return estate.get();
	}

	@Override
	public List<Estate> fetchAllEstates() {
		return estateRepository.findAll();
	}

	@Override
	public List<Estate> fetchEstateByLocation(String estateLocation) {
	 
		return estateRepository.findByEstateLocation(estateLocation);
	}
}
