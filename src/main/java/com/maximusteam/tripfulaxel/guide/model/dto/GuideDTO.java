package com.maximusteam.tripfulaxel.guide.model.dto;

public class GuideDTO {
	private Integer guideCode;
	private String carYn;
	private String expYn;
	private String nickname;
	private String intro;
	private int userCode;
	private String guideYn;
	private int levelCode;
	private int periodCode;
	
	public GuideDTO() {
		super();
	}
	
	public GuideDTO(int guideCode, String carYn, String expYn, String nickname, String intro, int userCode,
			String guideYn, int levelCode, int periodCode) {
		super();
		this.guideCode = guideCode;
		this.carYn = carYn;
		this.expYn = expYn;
		this.nickname = nickname;
		this.intro = intro;
		this.userCode = userCode;
		this.guideYn = guideYn;
		this.levelCode = levelCode;
		this.periodCode = periodCode;
	}
	public int getGuideCode() {
		return guideCode;
	}
	public void setGuideCode(int guideCode) {
		this.guideCode = guideCode;
	}
	public String getCarYn() {
		return carYn;
	}
	public void setCarYn(String carYn) {
		this.carYn = carYn;
	}
	public String getExpYn() {
		return expYn;
	}
	public void setExpYn(String expYn) {
		this.expYn = expYn;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public int getUserCode() {
		return userCode;
	}
	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}
	public String getGuideYn() {
		return guideYn;
	}
	public void setGuideYn(String guideYn) {
		this.guideYn = guideYn;
	}
	public int getLevelCode() {
		return levelCode;
	}
	public void setLevelCode(int levelCode) {
		this.levelCode = levelCode;
	}
	public int getPeriodCode() {
		return periodCode;
	}
	public void setPeriodCode(int periodCode) {
		this.periodCode = periodCode;
	}
	
	@Override
	public String toString() {
		return "GuideDTO [guideCode=" + guideCode + ", carYn=" + carYn + ", expYn=" + expYn + ", nickname=" + nickname
				+ ", intro=" + intro + ", userCode=" + userCode + ", guideYn=" + guideYn + ", levelCode=" + levelCode
				+ ", periodCode=" + periodCode + "]";
	}
}
