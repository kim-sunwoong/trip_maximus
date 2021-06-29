package com.maximusteam.tripfulaxel.user.mypage.model.dto;

import java.util.Date;

public class MemberDTO {
  
    private int memberNo;
    private String memberName;
    private String memberId;
    private java.util.Date enrollDate;
    private int count;

    public MemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberDTO(int memberNo, String memberName, String memberId, Date enrollDate, int count) {
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

	public java.util.Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(java.util.Date enrollDate) {
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
