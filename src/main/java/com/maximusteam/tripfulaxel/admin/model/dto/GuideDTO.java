package com.maximusteam.tripfulaxel.admin.model.dto;

public class GuideDTO {

    private int guideNo;
    private String guideId;
    private String guideEnrollStatus; //EXAMINE_REQUEST_YN 등록 여부
    private String guideApproveStatus; //심사 승인 여부
    
    private String guideName;// 가이드 이름
    private String guideGender;// 가이드 성별
    private String guideNickname;// 가이드 활동명
    private String guideExp;// 가이드 경험 여부
    private String guideCar;// 개인차량 여부
    private String guideIntro;// 가이드 소개
    
//    private String guideIdPicture;// 신분증 사진
//    private String guidePicture;// 가이드 사진
//    private String guideMotionPicture;// 활동 사진

    public GuideDTO() {}

	public GuideDTO(int guideNo, String guideId, String guideEnrollStatus, String guideApproveStatus, String guideName,
			String guideGender, String guideNickname, String guideExp, String guideCar, String guideIntro) {
		super();
		this.guideNo = guideNo;
		this.guideId = guideId;
		this.guideEnrollStatus = guideEnrollStatus;
		this.guideApproveStatus = guideApproveStatus;
		this.guideName = guideName;
		this.guideGender = guideGender;
		this.guideNickname = guideNickname;
		this.guideExp = guideExp;
		this.guideCar = guideCar;
		this.guideIntro = guideIntro;
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

	public String getGuideName() {
		return guideName;
	}

	public void setGuideName(String guideName) {
		this.guideName = guideName;
	}

	public String getGuideGender() {
		return guideGender;
	}

	public void setGuideGender(String guideGender) {
		this.guideGender = guideGender;
	}

	public String getGuideNickname() {
		return guideNickname;
	}

	public void setGuideNickname(String guideNickname) {
		this.guideNickname = guideNickname;
	}

	public String getGuideExp() {
		return guideExp;
	}

	public void setGuideExp(String guideExp) {
		this.guideExp = guideExp;
	}

	public String getGuideCar() {
		return guideCar;
	}

	public void setGuideCar(String guideCar) {
		this.guideCar = guideCar;
	}

	public String getGuideIntro() {
		return guideIntro;
	}

	public void setGuideIntro(String guideIntro) {
		this.guideIntro = guideIntro;
	}

	@Override
	public String toString() {
		return "GuideDTO [guideNo=" + guideNo + ", guideId=" + guideId + ", guideEnrollStatus=" + guideEnrollStatus
				+ ", guideApproveStatus=" + guideApproveStatus + ", guideName=" + guideName + ", guideGender="
				+ guideGender + ", guideNickname=" + guideNickname + ", guideExp=" + guideExp + ", guideCar=" + guideCar
				+ ", guideIntro=" + guideIntro + "]";
	}

    
    
    
}
