package com.maximusteam.tripfulaxel.admin.model.dto;

import java.sql.Date;

public class AdminAnswerDTO {

	
    private int answerNo;
    private String userId;
    private String answerTitle;
    private java.sql.Date answerDate;
    private String answerStatus;
    private String answerType;
    private int anwserRequestFrom;
    private String responseContent;
    private java.sql.Date responseDate;
    private int responseCode;
    private int noticeRequestCode;
    private int anwserRequestCode;
	
    public AdminAnswerDTO() {}

	public AdminAnswerDTO(int answerNo, String userId, String answerTitle, Date answerDate, String answerStatus,
			String answerType, int anwserRequestFrom, String responseContent, Date responseDate, int responseCode,
			int noticeRequestCode, int anwserRequestCode) {
		super();
		this.answerNo = answerNo;
		this.userId = userId;
		this.answerTitle = answerTitle;
		this.answerDate = answerDate;
		this.answerStatus = answerStatus;
		this.answerType = answerType;
		this.anwserRequestFrom = anwserRequestFrom;
		this.responseContent = responseContent;
		this.responseDate = responseDate;
		this.responseCode = responseCode;
		this.noticeRequestCode = noticeRequestCode;
		this.anwserRequestCode = anwserRequestCode;
	}

	public int getAnswerNo() {
		return answerNo;
	}

	public void setAnswerNo(int answerNo) {
		this.answerNo = answerNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getAnswerTitle() {
		return answerTitle;
	}

	public void setAnswerTitle(String answerTitle) {
		this.answerTitle = answerTitle;
	}

	public java.sql.Date getAnswerDate() {
		return answerDate;
	}

	public void setAnswerDate(java.sql.Date answerDate) {
		this.answerDate = answerDate;
	}

	public String getAnswerStatus() {
		return answerStatus;
	}

	public void setAnswerStatus(String answerStatus) {
		this.answerStatus = answerStatus;
	}

	public String getAnswerType() {
		return answerType;
	}

	public void setAnswerType(String answerType) {
		this.answerType = answerType;
	}

	public int getAnwserRequestFrom() {
		return anwserRequestFrom;
	}

	public void setAnwserRequestFrom(int anwserRequestFrom) {
		this.anwserRequestFrom = anwserRequestFrom;
	}

	public String getResponseContent() {
		return responseContent;
	}

	public void setResponseContent(String responseContent) {
		this.responseContent = responseContent;
	}

	public java.sql.Date getResponseDate() {
		return responseDate;
	}

	public void setResponseDate(java.sql.Date responseDate) {
		this.responseDate = responseDate;
	}

	public int getResponseCode() {
		return responseCode;
	}

	public void setResponseCode(int responseCode) {
		this.responseCode = responseCode;
	}

	public int getNoticeRequestCode() {
		return noticeRequestCode;
	}

	public void setNoticeRequestCode(int noticeRequestCode) {
		this.noticeRequestCode = noticeRequestCode;
	}

	public int getAnwserRequestCode() {
		return anwserRequestCode;
	}

	public void setAnwserRequestCode(int anwserRequestCode) {
		this.anwserRequestCode = anwserRequestCode;
	}

	@Override
	public String toString() {
		return "AdminAnswerDTO [answerNo=" + answerNo + ", userId=" + userId + ", answerTitle=" + answerTitle
				+ ", answerDate=" + answerDate + ", answerStatus=" + answerStatus + ", answerType=" + answerType
				+ ", anwserRequestFrom=" + anwserRequestFrom + ", responseContent=" + responseContent
				+ ", responseDate=" + responseDate + ", responseCode=" + responseCode + ", noticeRequestCode="
				+ noticeRequestCode + ", anwserRequestCode=" + anwserRequestCode + "]";
	}

	
	
	

	

	
	

    
    
}
