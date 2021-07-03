package com.maximusteam.tripfulaxel.guide.model.dto;

public class TripImageDTO {

	private int imageCode; // pk
	private String savedName;
	private int imageTypeCode;
	private String originName;
	private Integer refCode; // userCode
	
	public TripImageDTO() {
		super();
	}
	
	public TripImageDTO(int imageCode, String savedName, int imageTypeCode, String originName, Integer refCode) {
		super();
		this.imageCode = imageCode;
		this.savedName = savedName;
		this.imageTypeCode = imageTypeCode;
		this.originName = originName;
		this.refCode = refCode;
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
	public Integer getRefCode() {
		return refCode;
	}
	public void setRefCode(Integer refCode) {
		this.refCode = refCode;
	}

	@Override
	public String toString() {
		return "GuideImageDTO [imageCode=" + imageCode + ", savedName=" + savedName + ", imageTypeCode=" + imageTypeCode
				+ ", originName=" + originName + ", refCode=" + refCode + "]";
	}

	
}
