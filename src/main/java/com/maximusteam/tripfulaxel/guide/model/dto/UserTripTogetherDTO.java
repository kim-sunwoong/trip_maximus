package com.maximusteam.tripfulaxel.guide.model.dto;

public class UserTripTogetherDTO {

	private int joinTripCode;
	private String joinTripInfo;
	private String savedHostImageName;
	private int maximum;
	private int price;
	private int tripCode;
	
	public UserTripTogetherDTO() {
		super();
	}

	public UserTripTogetherDTO(int joinTripCode, String joinTripInfo, String savedHostImageName, int maximum, int price,
			int tripCode) {
		super();
		this.joinTripCode = joinTripCode;
		this.joinTripInfo = joinTripInfo;
		this.savedHostImageName = savedHostImageName;
		this.maximum = maximum;
		this.price = price;
		this.tripCode = tripCode;
	}

	public int getJoinTripCode() {
		return joinTripCode;
	}

	public void setJoinTripCode(int joinTripCode) {
		this.joinTripCode = joinTripCode;
	}

	public String getJoinTripInfo() {
		return joinTripInfo;
	}

	public void setJoinTripInfo(String joinTripInfo) {
		this.joinTripInfo = joinTripInfo;
	}

	public String getSavedHostImageName() {
		return savedHostImageName;
	}

	public void setSavedHostImageName(String savedHostImageName) {
		this.savedHostImageName = savedHostImageName;
	}

	public int getMaximum() {
		return maximum;
	}

	public void setMaximum(int maximum) {
		this.maximum = maximum;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getTripCode() {
		return tripCode;
	}

	public void setTripCode(int tripCode) {
		this.tripCode = tripCode;
	}

	@Override
	public String toString() {
		return "UserTripTogetherDTO [joinTripCode=" + joinTripCode + ", joinTripInfo=" + joinTripInfo
				+ ", savedHostImageName=" + savedHostImageName + ", maximum=" + maximum + ", price=" + price
				+ ", tripCode=" + tripCode + "]";
	}
	
}
