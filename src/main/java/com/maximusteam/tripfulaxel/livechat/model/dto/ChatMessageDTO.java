package com.maximusteam.tripfulaxel.livechat.model.dto;

import java.sql.Date;

public class ChatMessageDTO {

	
	private int messageCode;
	private String messageContent;
	private Date messageDate;
	private int userCode;
	private String userEmail;
	

	public ChatMessageDTO() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public ChatMessageDTO(int messageCode, String messageContent, Date messageDate, int userCode, String userEmail) {
		super();
		this.messageCode = messageCode;
		this.messageContent = messageContent;
		this.messageDate = messageDate;
		this.userCode = userCode;
		this.userEmail = userEmail;
	}



	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public int getMessageCode() {
		return messageCode;
	}

	public void setMessageCode(int messageCode) {
		this.messageCode = messageCode;
	}

	public String getMessageContent() {
		return messageContent;
	}

	public void setMessageContent(String messageContent) {
		this.messageContent = messageContent;
	}

	public Date getMessageDate() {
		return messageDate;
	}

	public void setMessageDate(Date messageDate) {
		this.messageDate = messageDate;
	}

	public int getUserCode() {
		return userCode;
	}

	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}



	@Override
	public String toString() {
		return "ChatMessageDTO [messageCode=" + messageCode + ", messageContent=" + messageContent + ", messageDate="
				+ messageDate + ", userCode=" + userCode + ", userEmail=" + userEmail + "]";
	}


	
	
	
	
}
