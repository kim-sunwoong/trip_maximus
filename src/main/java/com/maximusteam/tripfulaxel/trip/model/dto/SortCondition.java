package com.maximusteam.tripfulaxel.trip.model.dto;

public class SortCondition {

	private String sortCondition;
	private int sortTheme;
	private int tripType;
	
	public SortCondition() {
		// TODO Auto-generated constructor stub
	}

	public SortCondition(String sortCondition, int sortTheme, int tripType) {
		super();
		this.sortCondition = sortCondition;
		this.sortTheme = sortTheme;
		this.tripType = tripType;
	}

	public String getSortCondition() {
		return sortCondition;
	}

	public void setSortCondition(String sortCondition) {
		this.sortCondition = sortCondition;
	}

	public int getSortTheme() {
		return sortTheme;
	}

	public void setSortTheme(int sortTheme) {
		this.sortTheme = sortTheme;
	}

	public int getTripType() {
		return tripType;
	}

	public void setTripType(int tripType) {
		this.tripType = tripType;
	}

	@Override
	public String toString() {
		return "SortCondition [sortCondition=" + sortCondition + ", sortTheme=" + sortTheme + ", tripType=" + tripType
				+ "]";
	}

	

	
	
	
}
