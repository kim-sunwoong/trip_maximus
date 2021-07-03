package com.maximusteam.tripfulaxel.admin.model.dto;

import java.sql.Date;

public class LevelUpDTO {

    private int levelUpNo; 
    private String guideId;
    private String guideLevel;
    private int starPoint;
    private String review;
    private String levelUpStatus;
    private int guideNo;
    
	private int reviewCount;
	private String requestContent;
	
	private int responseCode;
	private int requestCode;
	private int examineCode;
	private String responseContent;
	private java.sql.Date responseDate;
	
	
    public LevelUpDTO() {}


	public LevelUpDTO(int levelUpNo, String guideId, String guideLevel, int starPoint, String review,
			String levelUpStatus, int guideNo, int reviewCount, String requestContent, int responseCode,
			int requestCode, int examineCode, String responseContent, Date responseDate) {
		super();
		this.levelUpNo = levelUpNo;
		this.guideId = guideId;
		this.guideLevel = guideLevel;
		this.starPoint = starPoint;
		this.review = review;
		this.levelUpStatus = levelUpStatus;
		this.guideNo = guideNo;
		this.reviewCount = reviewCount;
		this.requestContent = requestContent;
		this.responseCode = responseCode;
		this.requestCode = requestCode;
		this.examineCode = examineCode;
		this.responseContent = responseContent;
		this.responseDate = responseDate;
	}


	public int getLevelUpNo() {
		return levelUpNo;
	}


	public void setLevelUpNo(int levelUpNo) {
		this.levelUpNo = levelUpNo;
	}


	public String getGuideId() {
		return guideId;
	}


	public void setGuideId(String guideId) {
		this.guideId = guideId;
	}


	public String getGuideLevel() {
		return guideLevel;
	}


	public void setGuideLevel(String guideLevel) {
		this.guideLevel = guideLevel;
	}


	public int getStarPoint() {
		return starPoint;
	}


	public void setStarPoint(int starPoint) {
		this.starPoint = starPoint;
	}


	public String getReview() {
		return review;
	}


	public void setReview(String review) {
		this.review = review;
	}


	public String getLevelUpStatus() {
		return levelUpStatus;
	}


	public void setLevelUpStatus(String levelUpStatus) {
		this.levelUpStatus = levelUpStatus;
	}


	public int getGuideNo() {
		return guideNo;
	}


	public void setGuideNo(int guideNo) {
		this.guideNo = guideNo;
	}


	public int getReviewCount() {
		return reviewCount;
	}


	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
	}


	public String getRequestContent() {
		return requestContent;
	}


	public void setRequestContent(String requestContent) {
		this.requestContent = requestContent;
	}


	public int getResponseCode() {
		return responseCode;
	}


	public void setResponseCode(int responseCode) {
		this.responseCode = responseCode;
	}


	public int getRequestCode() {
		return requestCode;
	}


	public void setRequestCode(int requestCode) {
		this.requestCode = requestCode;
	}


	public int getExamineCode() {
		return examineCode;
	}


	public void setExamineCode(int examineCode) {
		this.examineCode = examineCode;
	}


	public String getResponseContent() {
		return responseContent;
	}


	public void setResponseContent(String responseContent) {
		this.responseContent = responseContent;
	}


	public java.sql.Date getResponseDate() {
		return responseDate;
	}


	public void setResponseDate(java.sql.Date responseDate) {
		this.responseDate = responseDate;
	}


	@Override
	public String toString() {
		return "LevelUpDTO [levelUpNo=" + levelUpNo + ", guideId=" + guideId + ", guideLevel=" + guideLevel
				+ ", starPoint=" + starPoint + ", review=" + review + ", levelUpStatus=" + levelUpStatus + ", guideNo="
				+ guideNo + ", reviewCount=" + reviewCount + ", requestContent=" + requestContent + ", responseCode="
				+ responseCode + ", requestCode=" + requestCode + ", examineCode=" + examineCode + ", responseContent="
				+ responseContent + ", responseDate=" + responseDate + "]";
	}

	
	

	


    
    
    
}
