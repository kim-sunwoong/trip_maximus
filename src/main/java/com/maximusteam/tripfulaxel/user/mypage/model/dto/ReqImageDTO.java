package com.maximusteam.tripfulaxel.user.mypage.model.dto;

public class ReqImageDTO {

	private String saveName;
	private String orignName;
	private int reqCode;
	private int code;
	
	public ReqImageDTO() {
	}

	public ReqImageDTO(String saveName, String orignName, int reqCode, int code) {
		this.saveName = saveName;
		this.orignName = orignName;
		this.reqCode = reqCode;
		this.code = code;
	}

	public String getSaveName() {
		return saveName;
	}

	public void setSaveName(String saveName) {
		this.saveName = saveName;
	}

	public String getOrignName() {
		return orignName;
	}

	public void setOrignName(String orignName) {
		this.orignName = orignName;
	}

	public int getreqCode() {
		return reqCode;
	}

	public void setreqCode(int reqCode) {
		this.reqCode = reqCode;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	@Override
	public String toString() {
		return "ImageDTO [saveName=" + saveName + ", orignName=" + orignName + ", reqCode=" + reqCode + ", code=" + code
				+ "]";
	}


	
	
}
