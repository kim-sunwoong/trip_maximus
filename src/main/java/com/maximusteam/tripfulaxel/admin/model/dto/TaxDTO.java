package com.maximusteam.tripfulaxel.admin.model.dto;

import java.util.Date;

public class TaxDTO {

	private int taxNo;
	private String guideId;
	private java.sql.Date taxDate;
	
	public TaxDTO() {}

	public TaxDTO(int taxNo, String guideId, java.sql.Date taxDate) {
		super();
		this.taxNo = taxNo;
		this.guideId = guideId;
		this.taxDate = taxDate;
	}

	public int getTaxNo() {
		return taxNo;
	}

	public void setTaxNo(int taxNo) {
		this.taxNo = taxNo;
	}

	public String getGuideId() {
		return guideId;
	}

	public void setGuideId(String guideId) {
		this.guideId = guideId;
	}

	public java.sql.Date getTaxDate() {
		return taxDate;
	}

	public void setTaxDate(java.sql.Date taxDate) {
		this.taxDate = taxDate;
	}

	@Override
	public String toString() {
		return "TaxDTO [taxNo=" + taxNo + ", guideId=" + guideId + ", taxDate=" + taxDate + "]";
	}


	
}
