package com.maximusteam.tripfulaxel.user.model.dto;

public class TripImageDTO {

	private int imageCode; // pk
	private String savedName;
	private int imageTypeCode;
	private String originName;
	
	
	public TripImageDTO() {
		super();
	
	}


	public TripImageDTO(int imageCode, String savedName, int imageTypeCode, String originName) {
		super();
		this.imageCode = imageCode;
		this.savedName = savedName;
		this.imageTypeCode = imageTypeCode;
		this.originName = originName;
	}

	
	

	public int getImageCode() {
		return imageCode;
	}


	public void setImageCode(int imageCode) {
		this.imageCode = imageCode;
	}


	public String getSavedName() {
		return savedName;
	}


	public void setSavedName(String savedName) {
		this.savedName = savedName;
	}


	public int getImageTypeCode() {
		return imageTypeCode;
	}


	public void setImageTypeCode(int imageTypeCode) {
		this.imageTypeCode = imageTypeCode;
	}


	public String getOriginName() {
		return originName;
	}


	public void setOriginName(String originName) {
		this.originName = originName;
	}


	@Override
	public String toString() {
		return "TripImageDTO [imageCode=" + imageCode + ", savedName=" + savedName + ", imageTypeCode=" + imageTypeCode
				+ ", originName=" + originName + "]";
	}


}
