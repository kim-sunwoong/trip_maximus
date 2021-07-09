package com.maximusteam.tripfulaxel.user.mypage.model.dto;

import java.sql.Date;

public class ReviewComentDTO {

	private int replyCode;
	private String replyInfo;
	private Date replyDate;
	private int reviewCode;
	
	public ReviewComentDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public ReviewComentDTO(int replyCode, String replyInfo, Date replyDate, int reviewCode) {
		super();
		this.replyCode = replyCode;
		this.replyInfo = replyInfo;
		this.replyDate = replyDate;
		this.reviewCode = reviewCode;
	}

	public int getReplyCode() {
		return replyCode;
	}

	public void setReplyCode(int replyCode) {
		this.replyCode = replyCode;
	}

	public String getReplyInfo() {
		return replyInfo;
	}

	public void setReplyInfo(String replyInfo) {
		this.replyInfo = replyInfo;
	}

	public Date getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}

	public int getReviewCode() {
		return reviewCode;
	}

	public void setReviewCode(int reviewCode) {
		this.reviewCode = reviewCode;
	}

	@Override
	public String toString() {
		return "ReviewComentDTO [replyCode=" + replyCode + ", replyInfo=" + replyInfo + ", replyDate=" + replyDate
				+ ", reviewCode=" + reviewCode + "]";
	}
	
	
}
