package com.app.RealEstateApp.service;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import com.app.RealEstateApp.entity.Estate;
import com.app.RealEstateApp.repository.EstateRepository;

@RunWith(MockitoJUnitRunner.class)
public class EstateServiceImplTest {

	@InjectMocks
	EstateServiceImpl estateService;

	@Mock
	EstateRepository estateRepository;

	@Test
	public void fetchAllEstates() {

		List<Estate> estates = new ArrayList<>();
		estates.add(new Estate(100, "AAA", "Chennai", 300000, 1500, "Vikash"));
		estates.add(new Estate(101, "BBB", "Hyderabad", 250000, 1600, "Naveen"));
		estates.add(new Estate(102, "CCC", "Mumbai", 140000, 800, "Anil"));

		when(estateRepository.findAll()).thenReturn(estates);

		List<Estate> estateList = estateService.fetchAllEstates();
		assertEquals(3, estateList.size());

	}
}
