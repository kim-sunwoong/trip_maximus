package com.maximusteam.tripfulaxel.user.mypage.model.dto;

import java.sql.Date;

public class JoinTripApplyDTO {
	
	private int joinTripApplyCode;
	private Date joinTripDate;
	private String joinTripCancelYN;
	private String joinTripAttendYN;
	private String joinTripReason;
	private int tripRegistListCode;
	private int userCode;
	public JoinTripApplyDTO() {
	}
	public JoinTripApplyDTO(int joinTripApplyCode, Date joinTripDate, String joinTripCancelYN, String joinTripAttendYN,
			String joinTripReason, int tripRegistListCode, int userCode) {
		super();
		this.joinTripApplyCode = joinTripApplyCode;
		this.joinTripDate = joinTripDate;
		this.joinTripCancelYN = joinTripCancelYN;
		this.joinTripAttendYN = joinTripAttendYN;
		this.joinTripReason = joinTripReason;
		this.tripRegistListCode = tripRegistListCode;
		this.userCode = userCode;
	}
	public int getJoinTripApplyCode() {
		return joinTripApplyCode;
	}
	public void setJoinTripApplyCode(int joinTripApplyCode) {
		this.joinTripApplyCode = joinTripApplyCode;
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
	public String getJoinTripReason() {
		return joinTripReason;
	}
	public void setJoinTripReason(String joinTripReason) {
		this.joinTripReason = joinTripReason;
	}
	public int getTripRegistListCode() {
		return tripRegistListCode;
	}
	public void setTripRegistListCode(int tripRegistListCode) {
		this.tripRegistListCode = tripRegistListCode;
	}
	public int getUserCode() {
		return userCode;
	}
	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}
	@Override
	public String toString() {
		return "JoinTripApplyDTO [joinTripApplyCode=" + joinTripApplyCode + ", joinTripDate=" + joinTripDate
				+ ", joinTripCancelYN=" + joinTripCancelYN + ", joinTripAttendYN=" + joinTripAttendYN
				+ ", joinTripReason=" + joinTripReason + ", tripRegistListCode=" + tripRegistListCode + ", userCode="
				+ userCode + "]";
	}
	
	
	
	
}
