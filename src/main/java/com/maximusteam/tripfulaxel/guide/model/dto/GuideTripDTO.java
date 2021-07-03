package com.maximusteam.tripfulaxel.guide.model.dto;

public class GuideTripDTO {

	private int guideTripCode;
	private int payment;
	private int minimum;
	private int maximum;
	private int tripCode;
	
	public GuideTripDTO() {
		super();
	}
	public GuideTripDTO(int guideTripCode, int payment, int minimum, int maximum, int tripCode) {
		super();
		this.guideTripCode = guideTripCode;
		this.payment = payment;
		this.minimum = minimum;
		this.maximum = maximum;
		this.tripCode = tripCode;
	}
	public int getGuideTripCode() {
		return guideTripCode;
	}
	public void setGuideTripCode(int guideTripCode) {
		this.guideTripCode = guideTripCode;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	public int getMinimum() {
		return minimum;
	}
	public void setMinimum(int minimum) {
		this.minimum = minimum;
	}
	public int getMaximum() {
		return maximum;
	}
	public void setMaximum(int maximum) {
		this.maximum = maximum;
	}
	public int getTripCode() {
		return tripCode;
	}
	public void setTripCode(int tripCode) {
		this.tripCode = tripCode;
	}
	@Override
	public String toString() {
		return "GuideTripDTO [guideTripCode=" + guideTripCode + ", payment=" + payment + ", minimum=" + minimum
				+ ", maximum=" + maximum + ", tripCode=" + tripCode + "]";
	}
}
