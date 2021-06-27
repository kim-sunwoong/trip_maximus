package com.maximusteam.tripfulaxel.trip.model.dto;

import java.sql.Date;

public class TripDTO {

	
	private int tripCode;
	private String tripTitle;
	private String tripIntro;
	private Date tripStartDate;
	private String meetLocation;
	private String include;
	private String nInclude;
	private Date tripEndDate;
	
//	같이가요
	private int joinTripCode;
	private int joinTripMaximum;
	
//	가이드
	private int guideTripCode;
	private int payment;
	private int guideTripMinimum;
	private int guideTripMaximum;
	
//	나만의여행
	private int userTripCode;
	private String userTripComentTitle;
	private String userTripComent;
	private int userTripComentPoint;
	
    public TripDTO() {
		// TODO Auto-generated constructor stub
	}

	public TripDTO(int tripCode, String tripTitle, String tripIntro, Date tripStartDate, String meetLocation,
			String include, String nInclude, Date tripEndDate, int joinTripCode, int joinTripMaximum, int guideTripCode,
			int payment, int guideTripMinimum, int guideTripMaximum, int userTripCode, String userTripComentTitle,
			String userTripComent, int userTripComentPoint) {
		super();
		this.tripCode = tripCode;
		this.tripTitle = tripTitle;
		this.tripIntro = tripIntro;
		this.tripStartDate = tripStartDate;
		this.meetLocation = meetLocation;
		this.include = include;
		this.nInclude = nInclude;
		this.tripEndDate = tripEndDate;
		this.joinTripCode = joinTripCode;
		this.joinTripMaximum = joinTripMaximum;
		this.guideTripCode = guideTripCode;
		this.payment = payment;
		this.guideTripMinimum = guideTripMinimum;
		this.guideTripMaximum = guideTripMaximum;
		this.userTripCode = userTripCode;
		this.userTripComentTitle = userTripComentTitle;
		this.userTripComent = userTripComent;
		this.userTripComentPoint = userTripComentPoint;
	}

	public int getTripCode() {
		return tripCode;
	}

	public void setTripCode(int tripCode) {
		this.tripCode = tripCode;
	}

	public String getTripTitle() {
		return tripTitle;
	}

	public void setTripTitle(String tripTitle) {
		this.tripTitle = tripTitle;
	}

	public String getTripIntro() {
		return tripIntro;
	}

	public void setTripIntro(String tripIntro) {
		this.tripIntro = tripIntro;
	}

	public Date getTripStartDate() {
		return tripStartDate;
	}

	public void setTripStartDate(Date tripStartDate) {
		this.tripStartDate = tripStartDate;
	}

	public String getMeetLocation() {
		return meetLocation;
	}

	public void setMeetLocation(String meetLocation) {
		this.meetLocation = meetLocation;
	}

	public String getInclude() {
		return include;
	}

	public void setInclude(String include) {
		this.include = include;
	}

	public String getnInclude() {
		return nInclude;
	}

	public void setnInclude(String nInclude) {
		this.nInclude = nInclude;
	}

	public Date getTripEndDate() {
		return tripEndDate;
	}

	public void setTripEndDate(Date tripEndDate) {
		this.tripEndDate = tripEndDate;
	}

	public int getJoinTripCode() {
		return joinTripCode;
	}

	public void setJoinTripCode(int joinTripCode) {
		this.joinTripCode = joinTripCode;
	}

	public int getJoinTripMaximum() {
		return joinTripMaximum;
	}

	public void setJoinTripMaximum(int joinTripMaximum) {
		this.joinTripMaximum = joinTripMaximum;
	}

	public int getGuideTripCode() {
		return guideTripCode;
	}

	public void setGuideTripCode(int guideTripCode) {
		this.guideTripCode = guideTripCode;
	}

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}

	public int getGuideTripMinimum() {
		return guideTripMinimum;
	}

	public void setGuideTripMinimum(int guideTripMinimum) {
		this.guideTripMinimum = guideTripMinimum;
	}

	public int getGuideTripMaximum() {
		return guideTripMaximum;
	}

	public void setGuideTripMaximum(int guideTripMaximum) {
		this.guideTripMaximum = guideTripMaximum;
	}

	public int getUserTripCode() {
		return userTripCode;
	}

	public void setUserTripCode(int userTripCode) {
		this.userTripCode = userTripCode;
	}

	public String getUserTripComentTitle() {
		return userTripComentTitle;
	}

	public void setUserTripComentTitle(String userTripComentTitle) {
		this.userTripComentTitle = userTripComentTitle;
	}

	public String getUserTripComent() {
		return userTripComent;
	}

	public void setUserTripComent(String userTripComent) {
		this.userTripComent = userTripComent;
	}

	public int getUserTripComentPoint() {
		return userTripComentPoint;
	}

	public void setUserTripComentPoint(int userTripComentPoint) {
		this.userTripComentPoint = userTripComentPoint;
	}

	@Override
	public String toString() {
		return "TripDTO [tripCode=" + tripCode + ", tripTitle=" + tripTitle + ", tripIntro=" + tripIntro
				+ ", tripStartDate=" + tripStartDate + ", meetLocation=" + meetLocation + ", include=" + include
				+ ", nInclude=" + nInclude + ", tripEndDate=" + tripEndDate + ", joinTripCode=" + joinTripCode
				+ ", joinTripMaximum=" + joinTripMaximum + ", guideTripCode=" + guideTripCode + ", payment=" + payment
				+ ", guideTripMinimum=" + guideTripMinimum + ", guideTripMaximum=" + guideTripMaximum
				+ ", userTripCode=" + userTripCode + ", userTripComentTitle=" + userTripComentTitle
				+ ", userTripComent=" + userTripComent + ", userTripComentPoint=" + userTripComentPoint + "]";
	}
    
    
	
	
}
