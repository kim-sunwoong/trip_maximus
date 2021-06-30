package com.maximusteam.tripfulaxel.trip.model.dto;

import java.util.List;

public class GuideDTO {

	private int guideCode;
	private String carYn;
	private String expYn;
	private String nickName;
	private String guideIntro;
	private int userCode;
	private String guideYn;
	private int guideLevelCode;
	private String guideLevel;
	private int regidencePeriodCode;
	private String regidencePeriod;
	
	private List<ImageDTO> guideImageList;
	
	private List<GuideStyleDTO> guideStyleList;
	
	
	public GuideDTO() {
		// TODO Auto-generated constructor stub
	}


	public GuideDTO(int guideCode, String carYn, String expYn, String nickName, String guideIntro, int userCode,
			String guideYn, int guideLevelCode, String guideLevel, int regidencePeriodCode, String regidencePeriod,
			List<ImageDTO> guideImageList, List<GuideStyleDTO> guideStyleList) {
		super();
		this.guideCode = guideCode;
		this.carYn = carYn;
		this.expYn = expYn;
		this.nickName = nickName;
		this.guideIntro = guideIntro;
		this.userCode = userCode;
		this.guideYn = guideYn;
		this.guideLevelCode = guideLevelCode;
		this.guideLevel = guideLevel;
		this.regidencePeriodCode = regidencePeriodCode;
		this.regidencePeriod = regidencePeriod;
		this.guideImageList = guideImageList;
		this.guideStyleList = guideStyleList;
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


	public String getNickName() {
		return nickName;
	}


	public void setNickName(String nickName) {
		this.nickName = nickName;
	}


	public String getGuideIntro() {
		return guideIntro;
	}


	public void setGuideIntro(String guideIntro) {
		this.guideIntro = guideIntro;
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


	public int getGuideLevelCode() {
		return guideLevelCode;
	}


	public void setGuideLevelCode(int guideLevelCode) {
		this.guideLevelCode = guideLevelCode;
	}


	public String getGuideLevel() {
		return guideLevel;
	}


	public void setGuideLevel(String guideLevel) {
		this.guideLevel = guideLevel;
	}


	public int getRegidencePeriodCode() {
		return regidencePeriodCode;
	}


	public void setRegidencePeriodCode(int regidencePeriodCode) {
		this.regidencePeriodCode = regidencePeriodCode;
	}


	public String getRegidencePeriod() {
		return regidencePeriod;
	}


	public void setRegidencePeriod(String regidencePeriod) {
		this.regidencePeriod = regidencePeriod;
	}


	public List<ImageDTO> getGuideImageList() {
		return guideImageList;
	}


	public void setGuideImageList(List<ImageDTO> guideImageList) {
		this.guideImageList = guideImageList;
	}


	public List<GuideStyleDTO> getGuideStyleList() {
		return guideStyleList;
	}


	public void setGuideStyleList(List<GuideStyleDTO> guideStyleList) {
		this.guideStyleList = guideStyleList;
	}


	@Override
	public String toString() {
		return "GuideDTO [guideCode=" + guideCode + ", carYn=" + carYn + ", expYn=" + expYn + ", nickName=" + nickName
				+ ", guideIntro=" + guideIntro + ", userCode=" + userCode + ", guideYn=" + guideYn + ", guideLevelCode="
				+ guideLevelCode + ", guideLevel=" + guideLevel + ", regidencePeriodCode=" + regidencePeriodCode
				+ ", regidencePeriod=" + regidencePeriod + ", guideImageList=" + guideImageList + ", guideStyleList="
				+ guideStyleList + "]";
	}


	
	
	
}
