package com.maximusteam.tripfulaxel.user.mypage.model.dto;

import java.sql.Date;

public class GuideTripApplyDTO {

	private String gTripTitle;
	private Date gTripDate;
	
	private StatusDTO status;
	
	private String gName;
	private int price;
	private int payment;
	
	public GuideTripApplyDTO() {
	}

	public GuideTripApplyDTO(String gTripTitle, Date gTripDate, StatusDTO status, String gName, int price,
			int payment) {
		super();
		this.gTripTitle = gTripTitle;
		this.gTripDate = gTripDate;
		this.status = status;
		this.gName = gName;
		this.price = price;
		this.payment = payment;
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

	public StatusDTO getStatus() {
		return status;
	}

	public void setStatus(StatusDTO status) {
		this.status = status;
	}

	public String getgName() {
		return gName;
	}

	public void setgName(String gName) {
		this.gName = gName;
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

	@Override
	public String toString() {
		return "GuideTripApplyDTO [gTripTitle=" + gTripTitle + ", gTripDate=" + gTripDate + ", status=" + status
				+ ", gName=" + gName + ", price=" + price + ", payment=" + payment + "]";
	}

}
