package com.maximusteam.tripfulaxel.model.dto;

import java.util.Date;

public class AdminDTO {
	
	private int adminNo;
	private String adminPosition;
	private String adminName;
	private String adminEmail;
	private java.util.Date hireDate;
	
	public AdminDTO() {}

	public AdminDTO(int adminNo, String adminPosition, String adminName, String adminEmail, Date hireDate) {
		super();
		this.adminNo = adminNo;
		this.adminPosition = adminPosition;
		this.adminName = adminName;
		this.adminEmail = adminEmail;
		this.hireDate = hireDate;
	}

	public int getAdminNo() {
		return adminNo;
	}

	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}

	public String getAdminPosition() {
		return adminPosition;
	}

	public void setAdminPosition(String adminPosition) {
		this.adminPosition = adminPosition;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	public java.util.Date getHireDate() {
		return hireDate;
	}

	public void setHireDate(java.util.Date hireDate) {
		this.hireDate = hireDate;
	}

	@Override
	public String toString() {
		return "AdminDTO [adminNo=" + adminNo + ", adminPosition=" + adminPosition + ", adminName=" + adminName
				+ ", adminEmail=" + adminEmail + ", hireDate=" + hireDate + "]";
	}
	
	

}
