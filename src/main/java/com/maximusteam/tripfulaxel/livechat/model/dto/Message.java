package com.maximusteam.tripfulaxel.livechat.model.dto;

public class Message {

	private int userCode;
	private String roomCode;
	private String messageContent;
	
	public Message() {
		// TODO Auto-generated constructor stub
	}

	public Message(int userCode, String roomCode, String messageContent) {
		super();
		this.userCode = userCode;
		this.roomCode = roomCode;
		this.messageContent = messageContent;
	}

	public int getUserCode() {
		return userCode;
	}

	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}

	public String getRoomCode() {
		return roomCode;
	}

	public void setRoomCode(String roomCode) {
		this.roomCode = roomCode;
	}

	public String getMessageContent() {
		return messageContent;
	}

	public void setMessageContent(String messageContent) {
		this.messageContent = messageContent;
	}

	@Override
	public String toString() {
		return "Message [userCode=" + userCode + ", roomCode=" + roomCode + ", messageContent=" + messageContent + "]";
	}
	
	
}
