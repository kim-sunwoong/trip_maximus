package com.maximusteam.tripfulaxel.trip.model.dto;

public class TripTransitDTO {

	private String transitDetail;
	private int transitCode;
	private int tripCode;
	
	public TripTransitDTO() {
		// TODO Auto-generated constructor stub
	}

	public TripTransitDTO(String transitDetail, int transitCode, int tripCode) {
		super();
		this.transitDetail = transitDetail;
		this.transitCode = transitCode;
		this.tripCode = tripCode;
	}

	public String getTransitDetail() {
		return transitDetail;
	}

	public void setTransitDetail(String transitDetail) {
		this.transitDetail = transitDetail;
	}

	public int getTransitCode() {
		return transitCode;
	}

	public void setTransitCode(int transitCode) {
		this.transitCode = transitCode;
	}

	public int getTripCode() {
		return tripCode;
	}

	public void setTripCode(int tripCode) {
		this.tripCode = tripCode;
	}

	@Override
	public String toString() {
		return "TripTransitDTO [transitDetail=" + transitDetail + ", transitCode=" + transitCode + ", tripCode="
				+ tripCode + "]";
	}
	
	
	
}
