package com.maximusteam.tripfulaxel.admin.model.dto;

import java.util.Date;

public class ReportDTO {

    private int reportNo; // 신고번호
    private String reportTitle; // 신고내용
    private String reportId;
    private int reportWriter; //신고작성자
    private int reportTarget; //신고대상자
    private String reportStatus; // 신고 처리상태
    private java.sql.Date reportDate;
	
    public ReportDTO() {}

	public ReportDTO(int reportNo, String reportTitle, String reportId, int reportWriter, int reportTarget,
			String reportStatus, java.sql.Date reportDate) {
		super();
		this.reportNo = reportNo;
		this.reportTitle = reportTitle;
		this.reportId = reportId;
		this.reportWriter = reportWriter;
		this.reportTarget = reportTarget;
		this.reportStatus = reportStatus;
		this.reportDate = reportDate;
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

	@Override
	public String toString() {
		return "ReportDTO [reportNo=" + reportNo + ", reportTitle=" + reportTitle + ", reportId=" + reportId
				+ ", reportWriter=" + reportWriter + ", reportTarget=" + reportTarget + ", reportStatus=" + reportStatus
				+ ", reportDate=" + reportDate + "]";
	}

    

	




	
    
}
