package com.maximusteam.tripfulaxel.admin.model.dto;

public class GuideDTO {

    private int guideNo;
    private String guideId;
    private String guideEnrollStatus; //EXAMINE_REQUEST_YN 등록 여부
    private String guideApproveStatus; //심사 승인 여부
	
    public GuideDTO() {}

	public GuideDTO(int guideNo, String guideId, String guideEnrollStatus, String guideApproveStatus) {
		super();
		this.guideNo = guideNo;
		this.guideId = guideId;
		this.guideEnrollStatus = guideEnrollStatus;
		this.guideApproveStatus = guideApproveStatus;
	}

	public int getGuideNo() {
		return guideNo;
	}

	public void setGuideNo(int guideNo) {
		this.guideNo = guideNo;
	}

	public String getGuideId() {
		return guideId;
	}

	public void setGuideId(String guideId) {
		this.guideId = guideId;
	}

	public String getGuideEnrollStatus() {
		return guideEnrollStatus;
	}

	public void setGuideEnrollStatus(String guideEnrollStatus) {
		this.guideEnrollStatus = guideEnrollStatus;
	}

	public String getGuideApproveStatus() {
		return guideApproveStatus;
	}

	public void setGuideApproveStatus(String guideApproveStatus) {
		this.guideApproveStatus = guideApproveStatus;
	}

	@Override
	public String toString() {
		return "GuideDTO [guideNo=" + guideNo + ", guideId=" + guideId + ", guideEnrollStatus=" + guideEnrollStatus
				+ ", guideApproveStatus=" + guideApproveStatus + "]";
	}
    
    
    
}
