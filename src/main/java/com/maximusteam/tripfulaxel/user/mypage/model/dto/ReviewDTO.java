package com.maximusteam.tripfulaxel.user.mypage.model.dto;

import java.sql.Date;
import java.util.List;

public class ReviewDTO {

	private int reviewCode;
	private String reviewTitle;
	private String reviewInfo;
	private Date reviewDate;
	private int star;
	
	private List<ImageDTO> reviewImgList;
	
	private ReviewComentDTO reviewComent;
	
	public ReviewDTO() {
	}

	public ReviewDTO(int reviewCode, String reviewTitle, String reviewInfo, Date reviewDate, int star,
			List<ImageDTO> reviewImgList, ReviewComentDTO reviewComent) {
		super();
		this.reviewCode = reviewCode;
		this.reviewTitle = reviewTitle;
		this.reviewInfo = reviewInfo;
		this.reviewDate = reviewDate;
		this.star = star;
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

	public int getstar() {
		return star;
	}

	public void setstar(int star) {
		this.star = star;
	}

	public List<ImageDTO> getReviewImgList() {
		return reviewImgList;
	}

	public void setReviewImgList(List<ImageDTO> reviewImgList) {
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
				+ ", reviewDate=" + reviewDate + ", star=" + star + ", reviewImgList=" + reviewImgList
				+ ", reviewComent=" + reviewComent + "]";
	}
	
	
	
	
}
