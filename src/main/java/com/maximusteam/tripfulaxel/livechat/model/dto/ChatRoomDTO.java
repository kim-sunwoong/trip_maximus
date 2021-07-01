package com.maximusteam.tripfulaxel.livechat.model.dto;

import java.util.List;

public class ChatRoomDTO {
	
	private int roomCode;
	
	private String roomTitle;
	
	private List<String> userEmailList;
	
	private List<ChatMessageDTO> messageList;
	
	
	public ChatRoomDTO() {
		// TODO Auto-generated constructor stub
	}


	public ChatRoomDTO(int roomCode, String roomTitle, List<String> userEmailList, List<ChatMessageDTO> messageList) {
		super();
		this.roomCode = roomCode;
		this.roomTitle = roomTitle;
		this.userEmailList = userEmailList;
		this.messageList = messageList;
	}


	public int getRoomCode() {
		return roomCode;
	}


	public void setRoomCode(int roomCode) {
		this.roomCode = roomCode;
	}


	public String getRoomTitle() {
		return roomTitle;
	}


	public void setRoomTitle(String roomTitle) {
		this.roomTitle = roomTitle;
	}


	public List<String> getUserEmailList() {
		return userEmailList;
	}


	public void setUserEmailList(List<String> userEmailList) {
		this.userEmailList = userEmailList;
	}


	public List<ChatMessageDTO> getMessageList() {
		return messageList;
	}


	public void setMessageList(List<ChatMessageDTO> messageList) {
		this.messageList = messageList;
	}


	@Override
	public String toString() {
		return "ChatRoomDTO [roomCode=" + roomCode + ", roomTitle=" + roomTitle + ", userEmailList=" + userEmailList
				+ ", messageList=" + messageList + "]";
	}
	
	

}
