package com.maximusteam.tripfulaxel.guide.model.dto;

public class GuideStyleChoiceDTO {

	private int guideStyleChoiceCode;
	private int guideCode;
	private int guideStyleCode; //1	액티비티를 즐기는 가이드
								//2	여행분야의 전문성이 높은 가이드
								//3	인생샷을 남겨주는 스냅 전문 가이드
								//4	함께 신나게 놀 수 있는 가이드
								//5	로컬 방방곡곡 가이드
								//6	먹거리 전문 먹짱 가이드
	public GuideStyleChoiceDTO() {
		super();
	}
	
	public GuideStyleChoiceDTO(int guideStyleChoiceCode, int guideCode,
			int guideStyleCode) {
		super();
		this.guideStyleChoiceCode = guideStyleChoiceCode;
		this.guideCode = guideCode;
		this.guideStyleCode = guideStyleCode;
	}
	public int getGuideStyleChoiceCode() {
		return guideStyleChoiceCode;
	}
	public void setGuideStyleChoiceCode(int guideStyleChoiceCode) {
		this.guideStyleChoiceCode = guideStyleChoiceCode;
	}
	public int getGuideCode() {
		return guideCode;
	}
	public void setGuideCode(int guideCode) {
		this.guideCode = guideCode;
	}
	public int getGuideStyleCode() {
		return guideStyleCode;
	}
	public void setGuideStyleCode(int guideStyleCode) {
		this.guideStyleCode = guideStyleCode;
	}
	@Override
	public String toString() {
		return "GuideStyleChoiceDTO [guideStyleChoiceCode=" + guideStyleChoiceCode
				+ ", guideCode=" + guideCode + ", guideStyleCode=" + guideStyleCode + "]";
	}
}
