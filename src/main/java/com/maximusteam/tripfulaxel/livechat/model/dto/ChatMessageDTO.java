package com.maximusteam.tripfulaxel.livechat.model.dto;


public class ChatMessageDTO {
	
	private String messageContent;
	private String messageDate;
	private int userCode;
	private int roomCode;
	private String userEmail;
	

	public ChatMessageDTO() {
		// TODO Auto-generated constructor stub
	}


	public ChatMessageDTO(String messageContent, String messageDate, int userCode, int roomCode, String userEmail) {
		super();
		this.messageContent = messageContent;
		this.messageDate = messageDate;
		this.userCode = userCode;
		this.roomCode = roomCode;
		this.userEmail = userEmail;
	}


	public String getMessageContent() {
		return messageContent;
	}


	public void setMessageContent(String messageContent) {
		this.messageContent = messageContent;
	}


	public String getMessageDate() {
		return messageDate;
	}


	public void setMessageDate(String messageDate) {
		this.messageDate = messageDate;
	}


	public int getUserCode() {
		return userCode;
	}


	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}


	public int getRoomCode() {
		return roomCode;
	}


	public void setRoomCode(int roomCode) {
		this.roomCode = roomCode;
	}


	public String getUserEmail() {
		return userEmail;
	}


	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}


	@Override
	public String toString() {
		return "ChatMessageDTO [messageContent=" + messageContent + ", messageDate=" + messageDate + ", userCode="
				+ userCode + ", roomCode=" + roomCode + ", userEmail=" + userEmail + "]";
	}

	

	
	
	
	
}
