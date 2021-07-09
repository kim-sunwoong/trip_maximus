package com.maximusteam.tripfulaxel.guide.model.dto;

public class UserTripAloneDTO {

	private int userTripCode;
	private String userTripCommentTitle;
	private String userTripCommentInfo;
	private int userTripCommentPoint;
	private int userTripPrice;
	private int tripCode;
	
	public UserTripAloneDTO() {
		super();
	}
	
	public UserTripAloneDTO(int userTripCode, String userTripCommentTitle, String userTripCommentInfo,
			int userTripCommentPoint, int userTripPrice, int tripCode) {
		super();
		this.userTripCode = userTripCode;
		this.userTripCommentTitle = userTripCommentTitle;
		this.userTripCommentInfo = userTripCommentInfo;
		this.userTripCommentPoint = userTripCommentPoint;
		this.userTripPrice = userTripPrice;
		this.tripCode = tripCode;
	}

	public int getUserTripCode() {
		return userTripCode;
	}

	public void setUserTripCode(int userTripCode) {
		this.userTripCode = userTripCode;
	}

	public String getUserTripCommentTitle() {
		return userTripCommentTitle;
	}

	public void setUserTripCommentTitle(String userTripCommentTitle) {
		this.userTripCommentTitle = userTripCommentTitle;
	}

	public String getUserTripCommentInfo() {
		return userTripCommentInfo;
	}

	public void setUserTripCommentInfo(String userTripCommentInfo) {
		this.userTripCommentInfo = userTripCommentInfo;
	}

	public int getUserTripCommentPoint() {
		return userTripCommentPoint;
	}

	public void setUserTripCommentPoint(int userTripCommentPoint) {
		this.userTripCommentPoint = userTripCommentPoint;
	}

	public int getUserTripPrice() {
		return userTripPrice;
	}

	public void setUserTripPrice(int userTripPrice) {
		this.userTripPrice = userTripPrice;
	}

	public int getTripCode() {
		return tripCode;
	}

	public void setTripCode(int tripCode) {
		this.tripCode = tripCode;
	}

	@Override
	public String toString() {
		return "UserTripDTO [userTripCode=" + userTripCode + ", userTripCommentTitle=" + userTripCommentTitle
				+ ", userTripCommentInfo=" + userTripCommentInfo + ", userTripCommentPoint=" + userTripCommentPoint
				+ ", userTripPrice=" + userTripPrice + ", tripCode=" + tripCode + "]";
	}
}
