package com.maximusteam.tripfulaxel.admin.model.dto;

public class GuideEnrollDTO {

	private String guideEnrollImage;

	public GuideEnrollDTO() {}

	public GuideEnrollDTO(String guideEnrollImage) {
		super();
		this.guideEnrollImage = guideEnrollImage;
	}

	public String getGuideEnrollImage() {
		return guideEnrollImage;
	}

	public void setGuideEnrollImage(String guideEnrollImage) {
		this.guideEnrollImage = guideEnrollImage;
	}

	@Override
	public String toString() {
		return "GuideEnrollDTO [guideEnrollImage=" + guideEnrollImage + "]";
	}
	
	
	
}
