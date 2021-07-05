package com.maximusteam.tripfulaxel.guide.model.dto;

public class TripTransitChoiceDTO {

	private int transitChoiceCode;
	private int transitCode;
	private int tripCode;
	
	public TripTransitChoiceDTO() {
		super();
	}

	public TripTransitChoiceDTO(int transitChoiceCode, int transitCode, int tripCode) {
		super();
		this.transitChoiceCode = transitChoiceCode;
		this.transitCode = transitCode;
		this.tripCode = tripCode;
	}

	public int getTransitChoiceCode() {
		return transitChoiceCode;
	}

	public void setTransitChoiceCode(int transitChoiceCode) {
		this.transitChoiceCode = transitChoiceCode;
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
		return "TripTransitChoiceDTO [transitChoiceCode=" + transitChoiceCode + ", transitCode=" + transitCode
				+ ", tripCode=" + tripCode + "]";
	}
}
