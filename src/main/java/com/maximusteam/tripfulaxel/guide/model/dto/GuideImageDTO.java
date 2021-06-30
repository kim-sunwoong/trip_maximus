package com.maximusteam.tripfulaxel.guide.model.dto;

public class GuideImageDTO {

	private int imageCode;
	private String savedName;
	private int imageTypeCode;
	private String originName;
	private int userCode;
	
	public GuideImageDTO() {
		super();
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
	public int getUserCode() {
		return userCode;
	}
	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}
	public GuideImageDTO(int imageCode, String savedName, int imageTypeCode, String originName, int userCode) {
		super();
		this.imageCode = imageCode;
		this.savedName = savedName;
		this.imageTypeCode = imageTypeCode;
		this.originName = originName;
		this.userCode = userCode;
	}
	@Override
	public String toString() {
		return "GuideImageDTO [imageCode=" + imageCode + ", savedName=" + savedName + ", imageTypeCode=" + imageTypeCode
				+ ", originName=" + originName + ", userCode=" + userCode + "]";
	}
}
