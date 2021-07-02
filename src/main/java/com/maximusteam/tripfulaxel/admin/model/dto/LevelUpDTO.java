package com.maximusteam.tripfulaxel.admin.model.dto;

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
	
    public LevelUpDTO() {}

	public LevelUpDTO(int levelUpNo, String guideId, String guideLevel, int starPoint, String review,
			String levelUpStatus, int guideNo, int reviewCount, String requestContent) {
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

	@Override
	public String toString() {
		return "LevelUpDTO [levelUpNo=" + levelUpNo + ", guideId=" + guideId + ", guideLevel=" + guideLevel
				+ ", starPoint=" + starPoint + ", review=" + review + ", levelUpStatus=" + levelUpStatus + ", guideNo="
				+ guideNo + ", reviewCount=" + reviewCount + ", requestContent=" + requestContent + "]";
	}

	


    
    
    
}
