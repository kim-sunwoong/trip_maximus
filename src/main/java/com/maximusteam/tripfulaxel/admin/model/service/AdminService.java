package com.maximusteam.tripfulaxel.admin.model.service;

import java.util.List;

import com.maximusteam.tripfulaxel.admin.model.dto.AdminDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.CalculateDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.GuideDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.MemberDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.ReportDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.TaxDTO;

public interface AdminService {

	List<AdminDTO> selectAdminList();

	List<MemberDTO> selectMemberList();

	List<ReportDTO> selectReportList();

	List<GuideDTO> selectGuideList();

	List<CalculateDTO> selectCalculateList();

	List<TaxDTO> selectTaxList();
}
