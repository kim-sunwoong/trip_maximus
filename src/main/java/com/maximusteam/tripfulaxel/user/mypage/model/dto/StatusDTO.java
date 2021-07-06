package com.maximusteam.tripfulaxel.user.mypage.model.dto;

import java.sql.Date;

public class StatusDTO {
	
	private String tripCancelYN;
	private String tripAttendYN;
	private Date tripEndDate;
	private int reviewCode;
	private String status;
	public StatusDTO() {
	}
	public StatusDTO(String tripCancelYN, String tripAttendYN, Date tripEndDate, int reviewCode, String status) {
		super();
		this.tripCancelYN = tripCancelYN;
		this.tripAttendYN = tripAttendYN;
		this.tripEndDate = tripEndDate;
		this.reviewCode = reviewCode;
		this.status = status;
	}
	public String getTripCancelYN() {
		return tripCancelYN;
	}
	public void setTripCancelYN(String tripCancelYN) {
		this.tripCancelYN = tripCancelYN;
	}
	public String getTripAttendYN() {
		return tripAttendYN;
	}
	public void setTripAttendYN(String tripAttendYN) {
		this.tripAttendYN = tripAttendYN;
	}
	public Date getTripEndDate() {
		return tripEndDate;
	}
	public void setTripEndDate(Date tripEndDate) {
		this.tripEndDate = tripEndDate;
	}
	public int getReviewCode() {
		return reviewCode;
	}
	public void setReviewCode(int reviewCode) {
		this.reviewCode = reviewCode;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "StatusDTO [tripCancelYN=" + tripCancelYN + ", tripAttendYN=" + tripAttendYN + ", tripEndDate="
				+ tripEndDate + ", reviewCode=" + reviewCode + ", status=" + status + "]";
	}
	
}
