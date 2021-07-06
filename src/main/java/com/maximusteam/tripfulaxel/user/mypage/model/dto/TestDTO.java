package com.maximusteam.tripfulaxel.user.mypage.model.dto;

public class TestDTO {

	private int userCode;
	private int tripCode;
	public TestDTO() {
	}
	
	public TestDTO(int userCode, int tripCode) {
		super();
		this.userCode = userCode;
		this.tripCode = tripCode;
	}

	public int getUserCode() {
		return userCode;
	}
	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}
	public int getTripCode() {
		return tripCode;
	}
	public void setTripCode(int tripCode) {
		this.tripCode = tripCode;
	}

	@Override
	public String toString() {
		return "TestDTO [userCode=" + userCode + ", tripCode=" + tripCode + "]";
	}
	
	
}
