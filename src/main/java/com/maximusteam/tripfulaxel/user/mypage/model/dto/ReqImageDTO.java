package com.maximusteam.tripfulaxel.user.mypage.model.dto;

public class ReqImageDTO {

	private String repSaveImg;
	private String repOriImg;
	
	public ReqImageDTO() {
	}

	public ReqImageDTO(String repSaveImg, String repOriImg) {
		super();
		this.repSaveImg = repSaveImg;
		this.repOriImg = repOriImg;
	}

	public String getRepSaveImg() {
		return repSaveImg;
	}

	public void setRepSaveImg(String repSaveImg) {
		this.repSaveImg = repSaveImg;
	}

	public String getRepOriImg() {
		return repOriImg;
	}

	public void setRepOriImg(String repOriImg) {
		this.repOriImg = repOriImg;
	}

	@Override
	public String toString() {
		return "ReqImageDTO [repSaveImg=" + repSaveImg + ", repOriImg=" + repOriImg + "]";
	}
	
	
}
