package com.maximusteam.tripfulaxel.user.mypage.model.dto;

import java.sql.Date;

public class StatusDTO {
	
	private String tripCancelYN;
	private String tripAttendYN;
	private Date tripEndDate;
	private int reviewCode;
	private String status;
	private int tripRegistCode;
	private int jtaCode;
	
	public StatusDTO() {
	}

	public StatusDTO(String tripCancelYN, String tripAttendYN, Date tripEndDate, int reviewCode, String status,
			int tripRegistCode, int jtaCode) {
		super();
		this.tripCancelYN = tripCancelYN;
		this.tripAttendYN = tripAttendYN;
		this.tripEndDate = tripEndDate;
		this.reviewCode = reviewCode;
		this.status = status;
		this.tripRegistCode = tripRegistCode;
		this.jtaCode = jtaCode;
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

	public int getTripRegistCode() {
		return tripRegistCode;
	}

	public void setTripRegistCode(int tripRegistCode) {
		this.tripRegistCode = tripRegistCode;
	}

	public int getJtaCode() {
		return jtaCode;
	}

	public void setJtaCode(int jtaCode) {
		this.jtaCode = jtaCode;
	}

	@Override
	public String toString() {
		return "StatusDTO [tripCancelYN=" + tripCancelYN + ", tripAttendYN=" + tripAttendYN + ", tripEndDate="
				+ tripEndDate + ", reviewCode=" + reviewCode + ", status=" + status + ", tripRegistCode="
				+ tripRegistCode + ", jtaCode=" + jtaCode + "]";
	}
	
	
}
