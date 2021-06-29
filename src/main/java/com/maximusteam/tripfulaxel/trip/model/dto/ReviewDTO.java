package com.maximusteam.tripfulaxel.trip.model.dto;

import java.sql.Date;
import java.util.List;

public class ReviewDTO {

	private int reviewCode;
	private String reviewTitle;
	private String reviewInfo;
	private Date reviewDate;
	private int reviewPoint;
	
	private List<ReviewImageDTO> reviewImgList;
	
	private ReviewComentDTO reviewComent;
	
	public ReviewDTO() {
		// TODO Auto-generated constructor stub
	}

	public ReviewDTO(int reviewCode, String reviewTitle, String reviewInfo, Date reviewDate, int reviewPoint,
			List<ReviewImageDTO> reviewImgList, ReviewComentDTO reviewComent) {
		super();
		this.reviewCode = reviewCode;
		this.reviewTitle = reviewTitle;
		this.reviewInfo = reviewInfo;
		this.reviewDate = reviewDate;
		this.reviewPoint = reviewPoint;
		this.reviewImgList = reviewImgList;
		this.reviewComent = reviewComent;
	}

	public int getReviewCode() {
		return reviewCode;
	}

	public void setReviewCode(int reviewCode) {
		this.reviewCode = reviewCode;
	}

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public String getReviewInfo() {
		return reviewInfo;
	}

	public void setReviewInfo(String reviewInfo) {
		this.reviewInfo = reviewInfo;
	}

	public Date getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}

	public int getReviewPoint() {
		return reviewPoint;
	}

	public void setReviewPoint(int reviewPoint) {
		this.reviewPoint = reviewPoint;
	}

	public List<ReviewImageDTO> getReviewImgList() {
		return reviewImgList;
	}

	public void setReviewImgList(List<ReviewImageDTO> reviewImgList) {
		this.reviewImgList = reviewImgList;
	}

	public ReviewComentDTO getReviewComent() {
		return reviewComent;
	}

	public void setReviewComent(ReviewComentDTO reviewComent) {
		this.reviewComent = reviewComent;
	}

	@Override
	public String toString() {
		return "ReviewDTO [reviewCode=" + reviewCode + ", reviewTitle=" + reviewTitle + ", reviewInfo=" + reviewInfo
				+ ", reviewDate=" + reviewDate + ", reviewPoint=" + reviewPoint + ", reviewImgList=" + reviewImgList
				+ ", reviewComent=" + reviewComent + "]";
	}
	
	
	
	
}
