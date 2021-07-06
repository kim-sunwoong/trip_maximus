package com.maximusteam.tripfulaxel.user.mypage.model.dto;

public class TripThemeDTO {

	private String themeDetail;
	private int themeCode;
	private int tripCode;
	
	public TripThemeDTO() {
		// TODO Auto-generated constructor stub
	}

	public TripThemeDTO(String themeDetail, int themeCode, int tripCode) {
		super();
		this.themeDetail = themeDetail;
		this.themeCode = themeCode;
		this.tripCode = tripCode;
	}

	public String getThemeDetail() {
		return themeDetail;
	}

	public void setThemeDetail(String themeDetail) {
		this.themeDetail = themeDetail;
	}

	public int getThemeCode() {
		return themeCode;
	}

	public void setThemeCode(int themeCode) {
		this.themeCode = themeCode;
	}

	public int getTripCode() {
		return tripCode;
	}

	public void setTripCode(int tripCode) {
		this.tripCode = tripCode;
	}

	@Override
	public String toString() {
		return "TripTheme [themeDetail=" + themeDetail + ", themeCode=" + themeCode + ", tripCode=" + tripCode + "]";
	}
	
	
	
	
}
