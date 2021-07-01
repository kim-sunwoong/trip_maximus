package com.maximusteam.tripfulaxel.admin.model.dto;

import java.sql.Date;

public class ReportDTO {

    private int reportNo; // 신고번호
    private String reportTitle; // 신고내용
    private String reportId; // 이메일
    private int reportWriter; //신고작성자
    private int reportTarget; //신고대상자
    private String reportStatus; // 신고 처리상태
    private java.sql.Date reportDate;
    private String responseContent;
    private java.sql.Date responseDate;
    private int responseCode;
    private int requestCode;
    private String userType;
    private int examineCode;
	
    public ReportDTO() {}

	public ReportDTO(int reportNo, String reportTitle, String reportId, int reportWriter, int reportTarget,
			String reportStatus, Date reportDate, String responseContent, Date responseDate, int responseCode,
			int requestCode, String userType, int examineCode) {
		super();
		this.reportNo = reportNo;
		this.reportTitle = reportTitle;
		this.reportId = reportId;
		this.reportWriter = reportWriter;
		this.reportTarget = reportTarget;
		this.reportStatus = reportStatus;
		this.reportDate = reportDate;
		this.responseContent = responseContent;
		this.responseDate = responseDate;
		this.responseCode = responseCode;
		this.requestCode = requestCode;
		this.userType = userType;
		this.examineCode = examineCode;
	}

	public int getReportNo() {
		return reportNo;
	}

	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}

	public String getReportTitle() {
		return reportTitle;
	}

	public void setReportTitle(String reportTitle) {
		this.reportTitle = reportTitle;
	}

	public String getReportId() {
		return reportId;
	}

	public void setReportId(String reportId) {
		this.reportId = reportId;
	}

	public int getReportWriter() {
		return reportWriter;
	}

	public void setReportWriter(int reportWriter) {
		this.reportWriter = reportWriter;
	}

	public int getReportTarget() {
		return reportTarget;
	}

	public void setReportTarget(int reportTarget) {
		this.reportTarget = reportTarget;
	}

	public String getReportStatus() {
		return reportStatus;
	}

	public void setReportStatus(String reportStatus) {
		this.reportStatus = reportStatus;
	}

	public java.sql.Date getReportDate() {
		return reportDate;
	}

	public void setReportDate(java.sql.Date reportDate) {
		this.reportDate = reportDate;
	}

	public String getResponseContent() {
		return responseContent;
	}

	public void setResponseContent(String responseContent) {
		this.responseContent = responseContent;
	}

	public java.sql.Date getResponseDate() {
		return responseDate;
	}

	public void setResponseDate(java.sql.Date responseDate) {
		this.responseDate = responseDate;
	}

	public int getResponseCode() {
		return responseCode;
	}

	public void setResponseCode(int responseCode) {
		this.responseCode = responseCode;
	}

	public int getRequestCode() {
		return requestCode;
	}

	public void setRequestCode(int requestCode) {
		this.requestCode = requestCode;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public int getExamineCode() {
		return examineCode;
	}

	public void setExamineCode(int examineCode) {
		this.examineCode = examineCode;
	}

	@Override
	public String toString() {
		return "ReportDTO [reportNo=" + reportNo + ", reportTitle=" + reportTitle + ", reportId=" + reportId
				+ ", reportWriter=" + reportWriter + ", reportTarget=" + reportTarget + ", reportStatus=" + reportStatus
				+ ", reportDate=" + reportDate + ", responseContent=" + responseContent + ", responseDate="
				+ responseDate + ", responseCode=" + responseCode + ", requestCode=" + requestCode + ", userType="
				+ userType + ", examineCode=" + examineCode + "]";
	}
    
	
	
}
