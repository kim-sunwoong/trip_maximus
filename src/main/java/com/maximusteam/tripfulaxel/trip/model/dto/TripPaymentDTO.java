package com.maximusteam.tripfulaxel.trip.model.dto;

import java.sql.Date;

public class TripPaymentDTO {

	private int userCode;
	private int tripRegistCode;
	private int amount;
	private int totalPay;
	private Date tripDay;
	private String saveName;
	
	public TripPaymentDTO() {
		// TODO Auto-generated constructor stub
	}

	public TripPaymentDTO(int userCode, int tripRegistCode, int amount, int totalPay, Date tripDay, String saveName) {
		super();
		this.userCode = userCode;
		this.tripRegistCode = tripRegistCode;
		this.amount = amount;
		this.totalPay = totalPay;
		this.tripDay = tripDay;
		this.saveName = saveName;
	}

	public int getUserCode() {
		return userCode;
	}

	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}

	public int getTripRegistCode() {
		return tripRegistCode;
	}

	public void setTripRegistCode(int tripRegistCode) {
		this.tripRegistCode = tripRegistCode;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getTotalPay() {
		return totalPay;
	}

	public void setTotalPay(int totalPay) {
		this.totalPay = totalPay;
	}

	public Date getTripDay() {
		return tripDay;
	}

	public void setTripDay(Date tripDay) {
		this.tripDay = tripDay;
	}

	public String getSaveName() {
		return saveName;
	}

	public void setSaveName(String saveName) {
		this.saveName = saveName;
	}

	@Override
	public String toString() {
		return "TripPaymentDTO [userCode=" + userCode + ", tripRegistCode=" + tripRegistCode + ", amount=" + amount
				+ ", totalPay=" + totalPay + ", tripDay=" + tripDay + ", saveName=" + saveName + "]";
	}

	
	
	
}
