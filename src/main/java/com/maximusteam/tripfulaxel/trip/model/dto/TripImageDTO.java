package com.maximusteam.tripfulaxel.trip.model.dto;

public class TripImageDTO {

	private String saveName;
	private String orignName;
	private int imgType;
	private int tripCode;
	
	public TripImageDTO() {
		// TODO Auto-generated constructor stub
	}

	public TripImageDTO(String saveName, String orignName, int imgType, int tripCode) {
		super();
		this.saveName = saveName;
		this.orignName = orignName;
		this.imgType = imgType;
		this.tripCode = tripCode;
	}

	public String getSaveName() {
		return saveName;
	}

	public void setSaveName(String saveName) {
		this.saveName = saveName;
	}

	public String getOrignName() {
		return orignName;
	}

	public void setOrignName(String orignName) {
		this.orignName = orignName;
	}

	public int getImgType() {
		return imgType;
	}

	public void setImgType(int imgType) {
		this.imgType = imgType;
	}

	public int getTripCode() {
		return tripCode;
	}

	public void setTripCode(int tripCode) {
		this.tripCode = tripCode;
	}

	@Override
	public String toString() {
		return "TripImageDTO [saveName=" + saveName + ", orignName=" + orignName + ", imgType=" + imgType
				+ ", tripCode=" + tripCode + "]";
	}
	
	
}
