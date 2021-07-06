package com.maximusteam.tripfulaxel.user.mypage.model.dto;

import java.sql.Date;

public class JoinTripListDTO {
	
	private String tripTitle;
	private int countUser;
	private Date joinTripDate;
	private StatusDTO status;
	
	public JoinTripListDTO() {
	}

	public JoinTripListDTO(String tripTitle, int countUser, Date joinTripDate, StatusDTO status) {
		super();
		this.tripTitle = tripTitle;
		this.countUser = countUser;
		this.joinTripDate = joinTripDate;
		this.status = status;
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

	public StatusDTO getStatus() {
		return status;
	}

	public void setStatus(StatusDTO status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "JoinTripListDTO [tripTitle=" + tripTitle + ", countUser=" + countUser + ", joinTripDate=" + joinTripDate
				+ ", status=" + status + "]";
	}
	
	
}
