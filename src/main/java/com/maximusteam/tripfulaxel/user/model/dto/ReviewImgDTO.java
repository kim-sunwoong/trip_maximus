package com.maximusteam.tripfulaxel.user.model.dto;

public class ReviewImgDTO {
	
	
	/* 리뷰이미지 */
	
	private int reviewImgCode; // 저장이미지코드
	private String reviewsaved; // 저장이미지명
	private String reviewOrigin; //원본이미지명
	// 후기코드 (조인)
	
	
	public ReviewImgDTO() {
		super();
	
	}
	
	
	public ReviewImgDTO(int reviewImgCode, String reviewsaved, String reviewOrigin) {
		super();
		this.reviewImgCode = reviewImgCode;
		this.reviewsaved = reviewsaved;
		this.reviewOrigin = reviewOrigin;
	}
	
	
	
	
	
	public int getReviewImgCode() {
		return reviewImgCode;
	}
	public void setReviewImgCode(int reviewImgCode) {
		this.reviewImgCode = reviewImgCode;
	}
	public String getReviewsaved() {
		return reviewsaved;
	}
	public void setReviewsaved(String reviewsaved) {
		this.reviewsaved = reviewsaved;
	}
	public String getReviewOrigin() {
		return reviewOrigin;
	}
	public void setReviewOrigin(String reviewOrigin) {
		this.reviewOrigin = reviewOrigin;
	}
	@Override
	public String toString() {
		return "ReviewImgDTO [reviewImgCode=" + reviewImgCode + ", reviewsaved=" + reviewsaved + ", reviewOrigin="
				+ reviewOrigin + "]";
	}
	
	
	
	
	
	
}
