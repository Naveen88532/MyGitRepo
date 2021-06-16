package com.app.RealEstateApp.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "estate_tbl")
public class Estate {

	@Id
	@Column(name = "estate_id")
	private int estateId;

	@Column(name = "estate_name")
	private String estateName;

	@Column(name = "estate_location")
	private String estateLocation;

	@Column(name = "estate_area")
	private int estateArea;

	@Column(name = "estate_owner")
	private String estateOwner;
	
	@Column(name = "estate_budget")
	private int estateBudget;

	public Estate() {

	}

	public Estate(int estateId, String estatename, String estatelocation, int estatebudget, int estatearea,
			String estateowner) {
		super();
		this.estateId = estateId;
		this.estateName = estatename;
		this.estateLocation = estatelocation;
		this.estateBudget = estatebudget;
		this.estateArea = estatearea;
		this.estateOwner = estateowner;
	}

	public int getEstateId() {
		return estateId;
	}

	public void setEstateId(int estateId) {
		this.estateId = estateId;
	}

	public String getEstateName() {
		return estateName;
	}

	public void setEstateName(String estatename) {

		this.estateName = estatename;
	}

	public String getEstateLocation() {
		return estateLocation;
	}

	public void setEstateLocation(String estatelocation) {
		this.estateLocation = estatelocation;
	}

	public int getEstateBudget() {
		return estateBudget;
	}

	public void setEstateBudget(int estatebudget) {
		this.estateBudget = estatebudget;
	}

	public int getEstateArea() {
		return estateArea;
	}

	public void setEstateArea(int estatearea) {
		this.estateArea = estatearea;
	}

	public String getEstateOwner() {
		return estateOwner;
	}

	public void setEstateOwner(String estateowner) {
		this.estateOwner = estateowner;
	}

}
