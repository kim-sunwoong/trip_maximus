package com.maximusteam.tripfulaxel.trip.model.dto;

import java.sql.Date;

public class TripPaymentDTO {

	private int userCode;
	private int tripRegistCode;
	private int tripJoinCode;
	private int tripCode;
	private int payCode;
	private int amount;
	private int totalPay;
	private Date tripDay;
	private String saveName;
	
	public TripPaymentDTO() {
		// TODO Auto-generated constructor stub
	}

	public TripPaymentDTO(int userCode, int tripRegistCode, int tripJoinCode, int tripCode, int payCode, int amount,
			int totalPay, Date tripDay, String saveName) {
		super();
		this.userCode = userCode;
		this.tripRegistCode = tripRegistCode;
		this.tripJoinCode = tripJoinCode;
		this.tripCode = tripCode;
		this.payCode = payCode;
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

	public int getTripJoinCode() {
		return tripJoinCode;
	}

	public void setTripJoinCode(int tripJoinCode) {
		this.tripJoinCode = tripJoinCode;
	}

	public int getTripCode() {
		return tripCode;
	}

	public void setTripCode(int tripCode) {
		this.tripCode = tripCode;
	}

	public int getPayCode() {
		return payCode;
	}

	public void setPayCode(int payCode) {
		this.payCode = payCode;
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
		return "TripPaymentDTO [userCode=" + userCode + ", tripRegistCode=" + tripRegistCode + ", tripJoinCode="
				+ tripJoinCode + ", tripCode=" + tripCode + ", payCode=" + payCode + ", amount=" + amount
				+ ", totalPay=" + totalPay + ", tripDay=" + tripDay + ", saveName=" + saveName + "]";
	}

	
	
	
	
	
	
}
