package com.maximusteam.tripfulaxel.livechat.model.dto;

public class ChatJoinUserDTO {

	private int joinCode;
	private int userCode;
	private String userEmail;
	private int roomCode;
	
	public ChatJoinUserDTO() {
		// TODO Auto-generated constructor stub
	}

	
	public ChatJoinUserDTO(int joinCode, int userCode, String userEmail, int roomCode) {
		super();
		this.joinCode = joinCode;
		this.userCode = userCode;
		this.userEmail = userEmail;
		this.roomCode = roomCode;
	}
	
	
	
	public int getRoomCode() {
		return roomCode;
	}


	public void setRoomCode(int roomCode) {
		this.roomCode = roomCode;
	}


	public int getJoinCode() {
		return joinCode;
	}



	public void setJoinCode(int joinCode) {
		this.joinCode = joinCode;
	}



	public int getUserCode() {
		return userCode;
	}

	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}


	@Override
	public String toString() {
		return "ChatJoinUserDTO [joinCode=" + joinCode + ", userCode=" + userCode + ", userEmail=" + userEmail
				+ ", roomCode=" + roomCode + "]";
	}



	
	
	
}
