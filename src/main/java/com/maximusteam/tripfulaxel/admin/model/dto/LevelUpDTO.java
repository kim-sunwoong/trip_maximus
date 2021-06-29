package com.maximusteam.tripfulaxel.admin.model.dto;

public class LevelUpDTO {

    private int levelUpNo; 
    private String guideId;
    private String guideLevel;
    private int starPoint;
    private String review;
    private String levelUpStatus;
	
    public LevelUpDTO() {}

	public LevelUpDTO(int levelUpNo, String guideId, String guideLevel, int starPoint, String review,
			String levelUpStatus) {
		super();
		this.levelUpNo = levelUpNo;
		this.guideId = guideId;
		this.guideLevel = guideLevel;
		this.starPoint = starPoint;
		this.review = review;
		this.levelUpStatus = levelUpStatus;
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

	@Override
	public String toString() {
		return "LevelUpDTO [levelUpNo=" + levelUpNo + ", guideId=" + guideId + ", guideLevel=" + guideLevel
				+ ", starPoint=" + starPoint + ", review=" + review + ", levelUpStatus=" + levelUpStatus + "]";
	}
    
    
    
}
