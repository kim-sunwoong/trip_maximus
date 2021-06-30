package com.maximusteam.tripfulaxel.trip.model.dto;

public class GuideStyleDTO {

	private String guideStyle;
	private int guideCode;
	private int styleCode;
	
	public GuideStyleDTO() {
		// TODO Auto-generated constructor stub
	}

	public GuideStyleDTO(String guideStyle, int guideCode, int styleCode) {
		super();
		this.guideStyle = guideStyle;
		this.guideCode = guideCode;
		this.styleCode = styleCode;
	}

	public String getGuideStyle() {
		return guideStyle;
	}

	public void setGuideStyle(String guideStyle) {
		this.guideStyle = guideStyle;
	}

	public int getGuideCode() {
		return guideCode;
	}

	public void setGuideCode(int guideCode) {
		this.guideCode = guideCode;
	}

	public int getStyleCode() {
		return styleCode;
	}

	public void setStyleCode(int styleCode) {
		this.styleCode = styleCode;
	}

	@Override
	public String toString() {
		return "GuideStyleDTO [guideStyle=" + guideStyle + ", guideCode=" + guideCode + ", styleCode=" + styleCode
				+ "]";
	}
	
	
	
	
}
