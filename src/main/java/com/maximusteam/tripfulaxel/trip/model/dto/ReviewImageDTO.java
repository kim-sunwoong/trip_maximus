package com.maximusteam.tripfulaxel.trip.model.dto;

public class ReviewImageDTO {
	
	private int reviewImgCode;
	private String saveName;
	private String orignName;
	private int reviewCode;
	
	public ReviewImageDTO() {
		// TODO Auto-generated constructor stub
	}

	public ReviewImageDTO(int reviewImgCode, String saveName, String orignName, int reviewCode) {
		super();
		this.reviewImgCode = reviewImgCode;
		this.saveName = saveName;
		this.orignName = orignName;
		this.reviewCode = reviewCode;
	}

	public int getReviewImgCode() {
		return reviewImgCode;
	}

	public void setReviewImgCode(int reviewImgCode) {
		this.reviewImgCode = reviewImgCode;
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

	public int getReviewCode() {
		return reviewCode;
	}

	public void setReviewCode(int reviewCode) {
		this.reviewCode = reviewCode;
	}

	@Override
	public String toString() {
		return "ReviewImageDTO [reviewImgCode=" + reviewImgCode + ", saveName=" + saveName + ", orignName=" + orignName
				+ ", reviewCode=" + reviewCode + "]";
	}
	
	
	
}
