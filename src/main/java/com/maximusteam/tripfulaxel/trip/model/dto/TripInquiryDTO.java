package com.maximusteam.tripfulaxel.trip.model.dto;

public class TripInquiryDTO {

	private int inquiryCode;
	private int userCode;
	private int tripRegistCode;
	private String inquiryContent;
	
	public TripInquiryDTO() {
		// TODO Auto-generated constructor stub
	}

	public TripInquiryDTO(int inquiryCode, int userCode, int tripRegistCode, String inquiryContent) {
		super();
		this.inquiryCode = inquiryCode;
		this.userCode = userCode;
		this.tripRegistCode = tripRegistCode;
		this.inquiryContent = inquiryContent;
	}

	public int getInquiryCode() {
		return inquiryCode;
	}

	public void setInquiryCode(int inquiryCode) {
		this.inquiryCode = inquiryCode;
	}

	public int getUserCode() {
		return userCode;
	}

	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}

	public int getTripRegistCode() {
		return tripRegistCode;
	}

	public void setTripRegistCode(int tripRegistCode) {
		this.tripRegistCode = tripRegistCode;
	}

	public String getInquiryContent() {
		return inquiryContent;
	}

	public void setInquiryContent(String inquiryContent) {
		this.inquiryContent = inquiryContent;
	}

	@Override
	public String toString() {
		return "TripInquiryDTO [inquiryCode=" + inquiryCode + ", userCode=" + userCode + ", tripRegistCode=" + tripRegistCode
				+ ", inquiryContent=" + inquiryContent + "]";
	}

	
	
}
