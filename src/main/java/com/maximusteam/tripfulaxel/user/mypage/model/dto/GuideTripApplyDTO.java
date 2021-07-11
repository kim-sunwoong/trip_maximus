package com.maximusteam.tripfulaxel.user.mypage.model.dto;

import java.sql.Date;

public class GuideTripApplyDTO {

	private String gTripTitle;
	private Date gTripDate;
	
	private String gName;
	
	private StatusDTO status;
	
	private int price;
	private int payment;
	
	private int tripRegistCode;

	
	public GuideTripApplyDTO() {
	}


	public GuideTripApplyDTO(String gTripTitle, Date gTripDate, String gName, StatusDTO status, int price, int payment,
			int tripRegistCode) {
		super();
		this.gTripTitle = gTripTitle;
		this.gTripDate = gTripDate;
		this.gName = gName;
		this.status = status;
		this.price = price;
		this.payment = payment;
		this.tripRegistCode = tripRegistCode;
	}


	public String getgTripTitle() {
		return gTripTitle;
	}


	public void setgTripTitle(String gTripTitle) {
		this.gTripTitle = gTripTitle;
	}


	public Date getgTripDate() {
		return gTripDate;
	}


	public void setgTripDate(Date gTripDate) {
		this.gTripDate = gTripDate;
	}


	public String getgName() {
		return gName;
	}


	public void setgName(String gName) {
		this.gName = gName;
	}


	public StatusDTO getStatus() {
		return status;
	}


	public void setStatus(StatusDTO status) {
		this.status = status;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public int getPayment() {
		return payment;
	}


	public void setPayment(int payment) {
		this.payment = payment;
	}


	public int getTripRegistCode() {
		return tripRegistCode;
	}


	public void setTripRegistCode(int tripRegistCode) {
		this.tripRegistCode = tripRegistCode;
	}


	@Override
	public String toString() {
		return "GuideTripApplyDTO [gTripTitle=" + gTripTitle + ", gTripDate=" + gTripDate + ", gName=" + gName
				+ ", status=" + status + ", price=" + price + ", payment=" + payment + ", tripRegistCode="
				+ tripRegistCode + "]";
	}


}
