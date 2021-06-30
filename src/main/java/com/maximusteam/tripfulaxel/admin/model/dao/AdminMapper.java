package com.maximusteam.tripfulaxel.admin.model.dao;

import java.util.List;

import com.maximusteam.tripfulaxel.admin.model.dto.AdminDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.CalculateDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.GuideDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.MemberDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.ReportDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.TaxDTO;

public interface AdminMapper {

	List<AdminDTO> selectAdmin();

	List<MemberDTO> selectMember();

	List<ReportDTO> selectReport();

	List<GuideDTO> selectGuide();

	List<CalculateDTO> selectCalculate();

	List<TaxDTO> selectTax();

	MemberDTO selectMemberDetail(int no);

	int deleteMember(int no);

	int deleteAdmin(int no);

	ReportDTO selectReportDetail(int no);

	int insertReport(ReportDTO report);

	int updateReportStatus(ReportDTO report);

	int updateReportCount(ReportDTO report);
}
