package com.maximusteam.tripfulaxel.admin.model.dto;

import java.util.Date;

public class ReportDTO {

    private int reportNo;
    private String reportTitle;
    private String reportReason;
    private String reportStatus;
    private java.util.Date reportDate;
	
    public ReportDTO() {}

	public ReportDTO(int reportNo, String reportTitle, String reportReason, String reportStatus, Date reportDate) {
		super();
		this.reportNo = reportNo;
		this.reportTitle = reportTitle;
		this.reportReason = reportReason;
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

	public String getReportReason() {
		return reportReason;
	}

	public void setReportReason(String reportReason) {
		this.reportReason = reportReason;
	}

	public String getReportStatus() {
		return reportStatus;
	}

	public void setReportStatus(String reportStatus) {
		this.reportStatus = reportStatus;
	}

	public java.util.Date getReportDate() {
		return reportDate;
	}

	public void setReportDate(java.util.Date reportDate) {
		this.reportDate = reportDate;
	}

	@Override
	public String toString() {
		return "ReportDTO [reportNo=" + reportNo + ", reportTitle=" + reportTitle + ", reportReason=" + reportReason
				+ ", reportStatus=" + reportStatus + ", reportDate=" + reportDate + "]";
	}
    
    
}
