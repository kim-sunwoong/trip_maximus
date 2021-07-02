package com.maximusteam.tripfulaxel.guide.model.dto;

import java.util.LinkedHashMap;

public class GuideRegistFormDTO {

	private LinkedHashMap<String, Object> formData;
	private LinkedHashMap<String, GuideImageDTO> imageData;
	
	public GuideRegistFormDTO() {
		super();
	}
	public GuideRegistFormDTO(LinkedHashMap<String, Object> formData, LinkedHashMap<String, GuideImageDTO> imageData) {
		super();
		this.formData = formData;
		this.imageData = imageData;
	}
	public LinkedHashMap<String, Object> getFormData() {
		return formData;
	}
	public void setFormData(LinkedHashMap<String, Object> formData) {
		this.formData = formData;
	}
	public LinkedHashMap<String, GuideImageDTO> getImageData() {
		return imageData;
	}
	public void setImageData(LinkedHashMap<String, GuideImageDTO> imageData) {
		this.imageData = imageData;
	}
	@Override
	public String toString() {
		return "GuideRegistFormDTO [formData=" + formData + ", imageData=" + imageData + "]";
	}
}
