package com.maximusteam.tripfulaxel.admin.model.dto;

import java.util.Date;

public class MemberDTO {
  
    private int memberNo;
    private String memberName;
    private String memberId;
    private java.sql.Date enrollDate;
    private int count;

    public MemberDTO() {}

	public MemberDTO(int memberNo, String memberName, String memberId, java.sql.Date enrollDate, int count) {
		super();
		this.memberNo = memberNo;
		this.memberName = memberName;
		this.memberId = memberId;
		this.enrollDate = enrollDate;
		this.count = count;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public java.sql.Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "MemberDTO [memberNo=" + memberNo + ", memberName=" + memberName + ", memberId=" + memberId
				+ ", enrollDate=" + enrollDate + ", count=" + count + "]";
	}

	
    
    
    
}
