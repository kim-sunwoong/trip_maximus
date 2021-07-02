package com.maximusteam.tripfulaxel.admin.model.dto;

import java.sql.Date;

public class ExamineDTO {

	private int examineRequestCode;
	private Date examineRequestDate; // 등록당시 날짜
	private String examineRequestReason;
	private int typeCode; // 1	가이드->유저 신고
						  // 2	유저->가이드 신고
						  // 3	등록심사
						  // 4	수정심사
						  // 5	유저 -> 관리자한테 문의
						  // 6	가이드 -> 관리자한테 문의
						  // 7	등업신청심사
	private String examineRequestYn; // 
	private int examineRequestFrom; // 회원번호 
	private int examineRequestTo;  // 가이드 등록시 - 여행등록내역코드
	
	public ExamineDTO() {
		super();
	}
	
	public ExamineDTO(int examineRequestCode, Date examineRequestDate, String examineRequestReason, int typeCode,
			String examineRequestYn, int examineRequestFrom, int examineRequestTo) {
		super();
		this.examineRequestCode = examineRequestCode;
		this.examineRequestDate = examineRequestDate;
		this.examineRequestReason = examineRequestReason;
		this.typeCode = typeCode;
		this.examineRequestYn = examineRequestYn;
		this.examineRequestFrom = examineRequestFrom;
		this.examineRequestTo = examineRequestTo;
	}

	public int getExamineRequestCode() {
		return examineRequestCode;
	}

	public void setExamineRequestCode(int examineRequestCode) {
		this.examineRequestCode = examineRequestCode;
	}

	public Date getExamineRequestDate() {
		return examineRequestDate;
	}

	public void setExamineRequestDate(Date examineRequestDate) {
		this.examineRequestDate = examineRequestDate;
	}

	public String getExamineRequestReason() {
		return examineRequestReason;
	}

	public void setExamineRequestReason(String examineRequestReason) {
		this.examineRequestReason = examineRequestReason;
	}

	public int getTypeCode() {
		return typeCode;
	}

	public void setTypeCode(int typeCode) {
		this.typeCode = typeCode;
	}

	public String getExamineRequestYn() {
		return examineRequestYn;
	}

	public void setExamineRequestYn(String examineRequestYn) {
		this.examineRequestYn = examineRequestYn;
	}

	public int getExamineRequestFrom() {
		return examineRequestFrom;
	}

	public void setExamineRequestFrom(int examineRequestFrom) {
		this.examineRequestFrom = examineRequestFrom;
	}

	public int getExamineRequestTo() {
		return examineRequestTo;
	}

	public void setExamineRequestTo(int examineRequestTo) {
		this.examineRequestTo = examineRequestTo;
	}

	@Override
	public String toString() {
		return "ExamineDTO [examineRequestCode=" + examineRequestCode + ", examineRequestDate=" + examineRequestDate
				+ ", examineRequestReason=" + examineRequestReason + ", typeCode=" + typeCode + ", examineRequestYn="
				+ examineRequestYn + ", examineRequestFrom=" + examineRequestFrom + ", examineRequestTo="
				+ examineRequestTo + "]";
	}
	
}
