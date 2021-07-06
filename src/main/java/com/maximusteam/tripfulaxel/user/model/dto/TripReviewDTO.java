package com.maximusteam.tripfulaxel.user.model.dto;

import java.sql.Date;

public class TripReviewDTO {
	
	/* 여행후기 */
	
	private int reviewCode; // 여행후기코드
	private String reviewTitle; // 여행후기제목
	private String reviewContent; // 여행후기내용 
	private Date reviewDate; // 여행후기 작성일자
	private int reviewGrade; // 평점
	private int tripApply; // 여행신청내역코드 (조인)
	
	/************************************************/
	
	/* 리뷰이미지 */
	
	private int reviewImg; // 저장이미지코드
	private String reviewsaved; // 저장이미지명
	private String reviewOrigin; //원본이미지명
	// 후기코드 (조인)
	
	/***********************************************************/
	
	/* 후기 댓글 */
	
	
	private int replycode; // 후기댓글코드
	private String replyDetail; // 여행후기댓글
	private Date replyDate; // 작성일
	//후기코드(조인)
	
	/*******************************************************************/
	
	/* 여행등록내역 */
	
	private int tripRegistListCode; // 여행등록내역코드
	//등록회원코드
	//여행타입코드
	//여행코드
	//게시타입코드 
	

	public TripReviewDTO() {
		super();
	
	}
	public TripReviewDTO(int reviewCode, String reviewTitle, String reviewContent, Date reviewDate, int reviewGrade,
			int tripApply, int reviewImg, String reviewsaved, String reviewOrigin, int replycode, String replyDetail,
			Date replyDate, int tripRegistListCode) {
		super();
		this.reviewCode = reviewCode;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewDate = reviewDate;
		this.reviewGrade = reviewGrade;
		this.tripApply = tripApply;
		this.reviewImg = reviewImg;
		this.reviewsaved = reviewsaved;
		this.reviewOrigin = reviewOrigin;
		this.replycode = replycode;
		this.replyDetail = replyDetail;
		this.replyDate = replyDate;
		this.tripRegistListCode = tripRegistListCode;
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
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public Date getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}
	public int getReviewGrade() {
		return reviewGrade;
	}
	public void setReviewGrade(int reviewGrade) {
		this.reviewGrade = reviewGrade;
	}
	public int getTripApply() {
		return tripApply;
	}
	public void setTripApply(int tripApply) {
		this.tripApply = tripApply;
	}
	public int getReviewImg() {
		return reviewImg;
	}
	public void setReviewImg(int reviewImg) {
		this.reviewImg = reviewImg;
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
	public int getReplycode() {
		return replycode;
	}
	public void setReplycode(int replycode) {
		this.replycode = replycode;
	}
	public String getReplyDetail() {
		return replyDetail;
	}
	public void setReplyDetail(String replyDetail) {
		this.replyDetail = replyDetail;
	}
	public Date getReplyDate() {
		return replyDate;
	}
	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}
	public int getTripRegistListCode() {
		return tripRegistListCode;
	}
	public void setTripRegistListCode(int tripRegistListCode) {
		this.tripRegistListCode = tripRegistListCode;
	}
	@Override
	public String toString() {
		return "TripReviewDTO [reviewCode=" + reviewCode + ", reviewTitle=" + reviewTitle + ", reviewContent="
				+ reviewContent + ", reviewDate=" + reviewDate + ", reviewGrade=" + reviewGrade + ", tripApply="
				+ tripApply + ", reviewImg=" + reviewImg + ", reviewsaved=" + reviewsaved + ", reviewOrigin="
				+ reviewOrigin + ", replycode=" + replycode + ", replyDetail=" + replyDetail + ", replyDate="
				+ replyDate + ", tripRegistListCode=" + tripRegistListCode + "]";
	}
	

	
	
}
