package com.maximusteam.tripfulaxel.user.mypage.model.dto;

import java.sql.Date;
import java.util.List;

public class ReqListDTO {
	
	private int reqType;
	private int reqTo;
	private String reqReason;
	private int reqCode;
	private Date reqDate;
	
	// 1	가이드->유저 신고      
	// 2	유저->가이드 신고      
	// 3	등록심사            
	// 4	수정심사            
	// 5	유저 -> 관리자한테 문의  
	// 6	가이드 -> 관리자한테 문의 
	// 7	등업신청심사          
	
	private int reqFrom;
	private String reqYN;
	
	List<ReqImageDTO> reqImage;
	
	public ReqListDTO() {
	}

	public ReqListDTO(int reqCode, Date reqDate, String reqReason, int reqType, int reqFrom, String reqYN, int reqTo,
			List<ReqImageDTO> reqImage) {
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

	public int getReqFrom() {
		return reqFrom;
	}

	public void setReqFrom(int reqFrom) {
		this.reqFrom = reqFrom;
	}

	public String getReqYN() {
		return reqYN;
	}

	public void setReqYN(String reqYN) {
		this.reqYN = reqYN;
	}

	public int getReqTo() {
		return reqTo;
	}

	public void setReqTo(int reqTo) {
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
