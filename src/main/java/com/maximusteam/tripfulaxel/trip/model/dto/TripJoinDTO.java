package com.maximusteam.tripfulaxel.trip.model.dto;

public class TripJoinDTO {

	private int joinCode;
	private String joinDate;
	private String joinCancleYn;
	private String joinAttendYn;
	private String joinReason;
	private int registCode;
	private int userCode;
	
	public TripJoinDTO() {
		// TODO Auto-generated constructor stub
	}

	public TripJoinDTO(int joinCode, String joinDate, String joinCancleYn, String joinAttendYn, String joinReason,
			int registCode, int userCode) {
		super();
		this.joinCode = joinCode;
		this.joinDate = joinDate;
		this.joinCancleYn = joinCancleYn;
		this.joinAttendYn = joinAttendYn;
		this.joinReason = joinReason;
		this.registCode = registCode;
		this.userCode = userCode;
	}

	public int getJoinCode() {
		return joinCode;
	}

	public void setJoinCode(int joinCode) {
		this.joinCode = joinCode;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}

	public String getJoinCancleYn() {
		return joinCancleYn;
	}

	public void setJoinCancleYn(String joinCancleYn) {
		this.joinCancleYn = joinCancleYn;
	}

	public String getJoinAttendYn() {
		return joinAttendYn;
	}

	public void setJoinAttendYn(String joinAttendYn) {
		this.joinAttendYn = joinAttendYn;
	}

	public String getJoinReason() {
		return joinReason;
	}

	public void setJoinReason(String joinReason) {
		this.joinReason = joinReason;
	}

	public int getRegistCode() {
		return registCode;
	}

	public void setRegistCode(int registCode) {
		this.registCode = registCode;
	}

	public int getUserCode() {
		return userCode;
	}

	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}

	@Override
	public String toString() {
		return "TripJoinDTO [joinCode=" + joinCode + ", joinDate=" + joinDate + ", joinCancleYn=" + joinCancleYn
				+ ", joinAttendYn=" + joinAttendYn + ", joinReason=" + joinReason + ", registCode=" + registCode
				+ ", userCode=" + userCode + "]";
	}
	
	
	
}
