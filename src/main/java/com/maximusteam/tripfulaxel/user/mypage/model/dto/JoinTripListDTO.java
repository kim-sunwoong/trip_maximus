package com.maximusteam.tripfulaxel.user.mypage.model.dto;

import java.sql.Date;

public class JoinTripListDTO {
	
	private String tripTitle;
	private int countUser;
	private Date joinTripDate;
	
	private String joinTripCancelYN;
	private String joinTripAttendYN;
	private Date tripEndDate;
	private int reviewCode;
	
	public JoinTripListDTO() {
	}
	public JoinTripListDTO(String tripTitle, int countUser, Date joinTripDate, String joinTripCancelYN,
			String joinTripAttendYN, Date tripEndDate, int reviewCode) {
		super();
		this.tripTitle = tripTitle;
		this.countUser = countUser;
		this.joinTripDate = joinTripDate;
		this.joinTripCancelYN = joinTripCancelYN;
		this.joinTripAttendYN = joinTripAttendYN;
		this.tripEndDate = tripEndDate;
		this.reviewCode = reviewCode;
	}
	public String getTripTitle() {
		return tripTitle;
	}
	public void setTripTitle(String tripTitle) {
		this.tripTitle = tripTitle;
	}
	public int getCountUser() {
		return countUser;
	}
	public void setCountUser(int countUser) {
		this.countUser = countUser;
	}
	public Date getJoinTripDate() {
		return joinTripDate;
	}
	public void setJoinTripDate(Date joinTripDate) {
		this.joinTripDate = joinTripDate;
	}
	public String getJoinTripCancelYN() {
		return joinTripCancelYN;
	}
	public void setJoinTripCancelYN(String joinTripCancelYN) {
		this.joinTripCancelYN = joinTripCancelYN;
	}
	public String getJoinTripAttendYN() {
		return joinTripAttendYN;
	}
	public void setJoinTripAttendYN(String joinTripAttendYN) {
		this.joinTripAttendYN = joinTripAttendYN;
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
	@Override
	public String toString() {
		return "JoinTripListDTO [tripTitle=" + tripTitle + ", countUser=" + countUser + ", joinTripDate=" + joinTripDate
				+ ", joinTripCancelYN=" + joinTripCancelYN + ", joinTripAttendYN=" + joinTripAttendYN + ", tripEndDate="
				+ tripEndDate + ", reviewCode=" + reviewCode + "]";
	}
	
	
}
