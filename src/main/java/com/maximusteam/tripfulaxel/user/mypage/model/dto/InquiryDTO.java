package com.maximusteam.tripfulaxel.user.mypage.model.dto;

public class InquiryDTO {
	
	private String inqReason;
	private String inqYN;
	private int trlCode;
	private int userCode;
	private int inqCode;
	private String guide;
	private String tripTitle;
	
	public InquiryDTO() {
	}

	public InquiryDTO(String inqReason, String inqYN, int trlCode, int userCode, int inqCode, String guide,
			String tripTitle) {
		super();
		this.inqReason = inqReason;
		this.inqYN = inqYN;
		this.trlCode = trlCode;
		this.userCode = userCode;
		this.inqCode = inqCode;
		this.guide = guide;
		this.tripTitle = tripTitle;
	}

	public String getInqReason() {
		return inqReason;
	}

	public void setInqReason(String inqReason) {
		this.inqReason = inqReason;
	}

	public String getInqYN() {
		return inqYN;
	}

	public void setInqYN(String inqYN) {
		this.inqYN = inqYN;
	}

	public int getTrlCode() {
		return trlCode;
	}

	public void setTrlCode(int trlCode) {
		this.trlCode = trlCode;
	}

	public int getUserCode() {
		return userCode;
	}

	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}

	public int getInqCode() {
		return inqCode;
	}

	public void setInqCode(int inqCode) {
		this.inqCode = inqCode;
	}

	public String getGuide() {
		return guide;
	}

	public void setGuide(String guide) {
		this.guide = guide;
	}

	public String getTripTitle() {
		return tripTitle;
	}

	public void setTripTitle(String tripTitle) {
		this.tripTitle = tripTitle;
	}

	@Override
	public String toString() {
		return "InquiryDTO [inqReason=" + inqReason + ", inqYN=" + inqYN + ", trlCode=" + trlCode + ", userCode="
				+ userCode + ", inqCode=" + inqCode + ", guide=" + guide + ", tripTitle=" + tripTitle + "]";
	}
	
	
}
