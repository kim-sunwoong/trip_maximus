package com.maximusteam.tripfulaxel.user.mypage.model.dto;

import java.sql.Date;

public class GuideTripApplyDTO {

	private String gTripTitle;
	private Date gTripDate;
	
	private String gTripCancelYN;
	private String gTripAttendYN;
	private Date gtripEndDate;
	private int reviewCode;
	
	private String gName;
	private int price;
	private int payment;
	
	public GuideTripApplyDTO() {
	}

	public GuideTripApplyDTO(String gTripTitle, Date gTripDate, String gTripCancelYN, String gTripAttendYN,
			Date gtripEndDate, int reviewCode, String gName, int price, int payment) {
		super();
		this.gTripTitle = gTripTitle;
		this.gTripDate = gTripDate;
		this.gTripCancelYN = gTripCancelYN;
		this.gTripAttendYN = gTripAttendYN;
		this.gtripEndDate = gtripEndDate;
		this.reviewCode = reviewCode;
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

	public String getgTripCancelYN() {
		return gTripCancelYN;
	}

	public void setgTripCancelYN(String gTripCancelYN) {
		this.gTripCancelYN = gTripCancelYN;
	}

	public String getgTripAttendYN() {
		return gTripAttendYN;
	}

	public void setgTripAttendYN(String gTripAttendYN) {
		this.gTripAttendYN = gTripAttendYN;
	}

	public Date getGtripEndDate() {
		return gtripEndDate;
	}

	public void setGtripEndDate(Date gtripEndDate) {
		this.gtripEndDate = gtripEndDate;
	}

	public int getReviewCode() {
		return reviewCode;
	}

	public void setReviewCode(int reviewCode) {
		this.reviewCode = reviewCode;
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

	public int getpayment() {
		return payment;
	}

	public void setpayment(int payment) {
		this.payment = payment;
	}

	@Override
	public String toString() {
		return "GuideTripApplyDTO [gTripTitle=" + gTripTitle + ", gTripDate=" + gTripDate + ", gTripCancelYN="
				+ gTripCancelYN + ", gTripAttendYN=" + gTripAttendYN + ", gtripEndDate=" + gtripEndDate
				+ ", reviewCode=" + reviewCode + ", gName=" + gName + ", price=" + price + ", payment=" + payment
				+ "]";
	}
	
	
	
	
	
}
