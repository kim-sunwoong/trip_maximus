package com.maximusteam.tripfulaxel.user.mypage.model.dto;

import java.sql.Date;
import java.util.List;

public class ReqListDTO {
	
	private int reqCode;
	private Date reqDate;
	private String reqReason;
	private int reqType;
	private String reqFrom;
	private String reqYN;
	private String reqTo;
	
	List<ReqImageDTO> reqImage;
	
	public ReqListDTO() {
	}

	public ReqListDTO(int reqCode, Date reqDate, String reqReason, int reqType, String reqFrom, String reqYN,
			String reqTo, List<ReqImageDTO> reqImage) {
		super();
		this.reqCode = reqCode;
		this.reqDate = reqDate;
		this.reqReason = reqReason;
		this.reqType = reqType;
		this.reqFrom = reqFrom;
		this.reqYN = reqYN;
		this.reqTo = reqTo;
		this.reqImage = reqImage;
	}

	public int getReqCode() {
		return reqCode;
	}

	public void setReqCode(int reqCode) {
		this.reqCode = reqCode;
	}

	public Date getReqDate() {
		return reqDate;
	}

	public void setReqDate(Date reqDate) {
		this.reqDate = reqDate;
	}

	public String getReqReason() {
		return reqReason;
	}

	public void setReqReason(String reqReason) {
		this.reqReason = reqReason;
	}

	public int getReqType() {
		return reqType;
	}

	public void setReqType(int reqType) {
		this.reqType = reqType;
	}

	public String getReqFrom() {
		return reqFrom;
	}

	public void setReqFrom(String reqFrom) {
		this.reqFrom = reqFrom;
	}

	public String getReqYN() {
		return reqYN;
	}

	public void setReqYN(String reqYN) {
		this.reqYN = reqYN;
	}

	public String getReqTo() {
		return reqTo;
	}

	public void setReqTo(String reqTo) {
		this.reqTo = reqTo;
	}

	public List<ReqImageDTO> getReqImage() {
		return reqImage;
	}

	public void setReqImage(List<ReqImageDTO> reqImage) {
		this.reqImage = reqImage;
	}

	@Override
	public String toString() {
		return "ReqListDTO [reqCode=" + reqCode + ", reqDate=" + reqDate + ", reqReason=" + reqReason + ", reqType="
				+ reqType + ", reqFrom=" + reqFrom + ", reqYN=" + reqYN + ", reqTo=" + reqTo + ", reqImage=" + reqImage
				+ "]";
	}
	
	
}
