package com.maximusteam.tripfulaxel.guide.model.dto;

public class TripRegistListDTO {
	
	private int registListCode;
	private int userCode;
	private int tripTypeCode; // 1. 가이드여행 2. 같이가요여행 3. 나만의여행
	private int tripCode;
	private int registTypeCode; // 1. 등록중 2. 수정중 3. 게시중 4. 게시안함
	
	public TripRegistListDTO() {
		super();
	}
	public TripRegistListDTO(int registListCode, int userCode, int tripTypeCode, int tripCode, int registTypeCode) {
		super();
		this.registListCode = registListCode;
		this.userCode = userCode;
		this.tripTypeCode = tripTypeCode;
		this.tripCode = tripCode;
		this.registTypeCode = registTypeCode;
	}
	public int getRegistListCode() {
		return registListCode;
	}
	public void setRegistListCode(int registListCode) {
		this.registListCode = registListCode;
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
	@Override
	public String toString() {
		return "TripRegistListDTO [registListCode=" + registListCode + ", userCode=" + userCode + ", tripTypeCode="
				+ tripTypeCode + ", tripCode=" + tripCode + ", registTypeCode=" + registTypeCode + "]";
	}
}
