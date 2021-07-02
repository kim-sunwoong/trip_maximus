package com.maximusteam.tripfulaxel.livechat.model.dto;

public class ChatJoinUserDTO {

	private int userCode;
	private String userEmail;
	
	public ChatJoinUserDTO() {
		// TODO Auto-generated constructor stub
	}

	public ChatJoinUserDTO(int userCode, String userEmail) {
		super();
		this.userCode = userCode;
		this.userEmail = userEmail;
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
		return "ChatJoinUserDTO [userCode=" + userCode + ", userEmail=" + userEmail + "]";
	}
	
	
}
