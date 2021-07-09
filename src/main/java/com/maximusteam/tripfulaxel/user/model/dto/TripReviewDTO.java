package com.maximusteam.tripfulaxel.user.model.dto;

import java.sql.Date;
import java.util.List;

public class TripReviewDTO {
	
	/* 여행후기 */
	
	private int reviewCode; // 여행후기코드
	private String reviewTitle; // 여행후기제목
	private String reviewContent; // 여행후기내용 
	private Date reviewDate; // 여행후기 작성일자
	private int reviewGrade; // 평점
	private int tripApply; // 여행신청내역코드 (조인)
	
	/************************************************/
	
	/***********************************************************/
	
	/* 후기 댓글 */
	
	private int guideReplyCode; // 
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
	
	/***********************************************************/
	
	/* 여행 신청 내역 */
	
	private int joinTripcode; // 여행신청내역코드
	private Date joinTripDate; // 신청일자
	private String joinTripCancel; // 취소여부
	private String joinTripAttend; // 참석여부
	private String joinTripReason; // 신청사유
	// 신청회원코드
	
	List<UserDTO> guideList;
	List<ReviewImgDTO> reviewImgList;
	List<TripImageDTO> tripImgList;
	List<TripDTO> tripList;
	
	
	public TripReviewDTO() {
		super();
		
	}


	public TripReviewDTO(int reviewCode, String reviewTitle, String reviewContent, Date reviewDate, int reviewGrade,
			int tripApply, int guideReplyCode, int replycode, String replyDetail, Date replyDate,
			int tripRegistListCode, int joinTripcode, Date joinTripDate, String joinTripCancel, String joinTripAttend,
			String joinTripReason, List<UserDTO> guideList, List<ReviewImgDTO> reviewImgList,
			List<TripImageDTO> tripImgList, List<TripDTO> tripList) {
		super();
		this.reviewCode = reviewCode;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewDate = reviewDate;
		this.reviewGrade = reviewGrade;
		this.tripApply = tripApply;
		this.guideReplyCode = guideReplyCode;
		this.replycode = replycode;
		this.replyDetail = replyDetail;
		this.replyDate = replyDate;
		this.tripRegistListCode = tripRegistListCode;
		this.joinTripcode = joinTripcode;
		this.joinTripDate = joinTripDate;
		this.joinTripCancel = joinTripCancel;
		this.joinTripAttend = joinTripAttend;
		this.joinTripReason = joinTripReason;
		this.guideList = guideList;
		this.reviewImgList = reviewImgList;
		this.tripImgList = tripImgList;
		this.tripList = tripList;
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


	public int getGuideReplyCode() {
		return guideReplyCode;
	}


	public void setGuideReplyCode(int guideReplyCode) {
		this.guideReplyCode = guideReplyCode;
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


	public int getJoinTripcode() {
		return joinTripcode;
	}


	public void setJoinTripcode(int joinTripcode) {
		this.joinTripcode = joinTripcode;
	}


	public Date getJoinTripDate() {
		return joinTripDate;
	}


	public void setJoinTripDate(Date joinTripDate) {
		this.joinTripDate = joinTripDate;
	}


	public String getJoinTripCancel() {
		return joinTripCancel;
	}


	public void setJoinTripCancel(String joinTripCancel) {
		this.joinTripCancel = joinTripCancel;
	}


	public String getJoinTripAttend() {
		return joinTripAttend;
	}


	public void setJoinTripAttend(String joinTripAttend) {
		this.joinTripAttend = joinTripAttend;
	}


	public String getJoinTripReason() {
		return joinTripReason;
	}


	public void setJoinTripReason(String joinTripReason) {
		this.joinTripReason = joinTripReason;
	}


	public List<UserDTO> getGuideList() {
		return guideList;
	}


	public void setGuideList(List<UserDTO> guideList) {
		this.guideList = guideList;
	}


	public List<ReviewImgDTO> getReviewImgList() {
		return reviewImgList;
	}


	public void setReviewImgList(List<ReviewImgDTO> reviewImgList) {
		this.reviewImgList = reviewImgList;
	}


	public List<TripImageDTO> getTripImgList() {
		return tripImgList;
	}


	public void setTripImgList(List<TripImageDTO> tripImgList) {
		this.tripImgList = tripImgList;
	}


	public List<TripDTO> getTripList() {
		return tripList;
	}


	public void setTripList(List<TripDTO> tripList) {
		this.tripList = tripList;
	}


	@Override
	public String toString() {
		return "TripReviewDTO [reviewCode=" + reviewCode + ", reviewTitle=" + reviewTitle + ", reviewContent="
				+ reviewContent + ", reviewDate=" + reviewDate + ", reviewGrade=" + reviewGrade + ", tripApply="
				+ tripApply + ", guideReplyCode=" + guideReplyCode + ", replycode=" + replycode + ", replyDetail="
				+ replyDetail + ", replyDate=" + replyDate + ", tripRegistListCode=" + tripRegistListCode
				+ ", joinTripcode=" + joinTripcode + ", joinTripDate=" + joinTripDate + ", joinTripCancel="
				+ joinTripCancel + ", joinTripAttend=" + joinTripAttend + ", joinTripReason=" + joinTripReason
				+ ", guideList=" + guideList + ", reviewImgList=" + reviewImgList + ", tripImgList=" + tripImgList
				+ ", tripList=" + tripList + "]";
	}


	
	
}
