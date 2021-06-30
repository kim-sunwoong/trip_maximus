package com.maximusteam.tripfulaxel.trip.model.dto;

public class ImageDTO {

	private String saveName;
	private String orignName;
	private int imgType;
	private int code;
	
	public ImageDTO() {
		// TODO Auto-generated constructor stub
	}

	public ImageDTO(String saveName, String orignName, int imgType, int code) {
		super();
		this.saveName = saveName;
		this.orignName = orignName;
		this.imgType = imgType;
		this.code = code;
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

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	@Override
	public String toString() {
		return "ImageDTO [saveName=" + saveName + ", orignName=" + orignName + ", imgType=" + imgType + ", code=" + code
				+ "]";
	}


	
	
}
