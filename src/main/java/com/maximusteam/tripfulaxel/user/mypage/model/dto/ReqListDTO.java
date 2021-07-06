package com.maximusteam.tripfulaxel.user.mypage.model.dto;

import java.sql.Date;

public class ReqListDTO {
	
	private String reqReason;
	private String reqTo;
	private String reqYN;
	private Date reqDate;
	public ReqListDTO() {
	}
	public ReqListDTO(String reqReason, String reqTo, String reqYN, Date reqDate) {
		super();
		this.reqReason = reqReason;
		this.reqTo = reqTo;
		this.reqYN = reqYN;
		this.reqDate = reqDate;
	}
	public String getReqReason() {
		return reqReason;
	}
	public void setReqReason(String reqReason) {
		this.reqReason = reqReason;
	}
	public String getreqTo() {
		return reqTo;
	}
	public void setreqTo(String reqTo) {
		this.reqTo = reqTo;
	}
	public String getReqYN() {
		return reqYN;
	}
	public void setReqYN(String reqYN) {
		this.reqYN = reqYN;
	}
	public Date getReqDate() {
		return reqDate;
	}
	public void setReqDate(Date reqDate) {
		this.reqDate = reqDate;
	}
	@Override
	public String toString() {
		return "ReqListDTO [reqReason=" + reqReason + ", reqTo=" + reqTo + ", reqYN=" + reqYN + ", reqDate=" + reqDate
				+ "]";
	}
	
	
	
}
