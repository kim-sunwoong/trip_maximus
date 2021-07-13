package com.maximusteam.tripfulaxel.api.model.dto;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class NewUserApiDTO {

	@JsonIgnore
	private int userCode;
	private String Name;
	private String Phone;
	private String Password;
	private String Birthday;
	private String Gender;
	private String Email;
	
	public NewUserApiDTO() {
		super();
	}
	
	public NewUserApiDTO(int userCode, String name, String phone, String password, String birthday, String gender,
			String userEmail) {
		super();
		this.userCode = userCode;
		Name = name;
		Phone = phone;
		Password = password;
		Birthday = birthday;
		Gender = gender;
		this.Email = userEmail;
	}

	public int getUserCode() {
		return userCode;
	}

	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getBirthday() {
		return Birthday;
	}

	public void setBirthday(String birthday) {
		Birthday = birthday;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String userEmail) {
		this.Email = userEmail;
	}

	@Override
	public String toString() {
		return "NewUserApiDTO [userCode=" + userCode + ", Name=" + Name + ", Phone=" + Phone + ", Password=" + Password
				+ ", Birthday=" + Birthday + ", Gender=" + Gender + ", Email=" + Email + "]";
	}
	
	
}
