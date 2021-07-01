package com.maximusteam.tripfulaxel.user.mypage.model.dto;

import java.util.List;

public class TripRegistListDTO {
	
	private int tripRegistListCode;
	private int userCode;
	private int tripTypeCode;
	private int tripCode;
	private int registTypeCode;
	
	private List<JoinTripApplyDTO> joinTripApply;
	
	
	public TripRegistListDTO() {
		super();
	}


	public TripRegistListDTO(int tripRegistListCode, int userCode, int tripTypeCode, int tripCode, int registTypeCode,
			List<JoinTripApplyDTO> joinTripApply) {
		super();
		this.tripRegistListCode = tripRegistListCode;
		this.userCode = userCode;
		this.tripTypeCode = tripTypeCode;
		this.tripCode = tripCode;
		this.registTypeCode = registTypeCode;
		this.joinTripApply = joinTripApply;
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


	public int getTripTypeCode() {
		return tripTypeCode;
	}


	public void setTripTypeCode(int tripTypeCode) {
		this.tripTypeCode = tripTypeCode;
	}


	public int getTripCode() {
		return tripCode;
	}


	public void setTripCode(int tripCode) {
		this.tripCode = tripCode;
	}


	public int getRegistTypeCode() {
		return registTypeCode;
	}


	public void setRegistTypeCode(int registTypeCode) {
		this.registTypeCode = registTypeCode;
	}


	public List<JoinTripApplyDTO> getJoinTripApply() {
		return joinTripApply;
	}


	public void setJoinTripApply(List<JoinTripApplyDTO> joinTripApply) {
		this.joinTripApply = joinTripApply;
	}


	@Override
	public String toString() {
		return "TripRegistListDTO [tripRegistListCode=" + tripRegistListCode + ", userCode=" + userCode
				+ ", tripTypeCode=" + tripTypeCode + ", tripCode=" + tripCode + ", registTypeCode=" + registTypeCode
				+ ", joinTripApply=" + joinTripApply + "]";
	}
	
	

}
