package com.maximusteam.tripfulaxel.admin.model.service;

import java.util.List;

import com.maximusteam.tripfulaxel.admin.model.dto.AdminDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.AdminAnswerDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.CalculateDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.GuideDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.GuideEnrollDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.LevelUpDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.MemberDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.ReportDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.TaxDTO;

public interface AdminService {

	List<AdminDTO> selectAdminList();

	List<MemberDTO> selectMemberList();

	List<ReportDTO> selectReportList(ReportDTO type);

	List<GuideDTO> selectGuideList();

	List<CalculateDTO> selectCalculateList();

	List<TaxDTO> selectTaxList();

	MemberDTO selectMemberDetail(int no);

	int deleteMember(int no);

	int deleteAdmin(int no);

	ReportDTO selectReportDetail(int no);

	int insertReport(ReportDTO report);

	int updateReportStatus(ReportDTO report);

	int updateReportCount(ReportDTO report);

	GuideDTO selectEnrollDetail(int no);

	GuideEnrollDTO selectProfilePic(int no);

	GuideEnrollDTO selectIdPic(int no);

	List<AdminAnswerDTO> selectMemberCategory(AdminAnswerDTO type);

	AdminAnswerDTO selectAnswerDetail(int no);

	int insertAnswer(AdminAnswerDTO answer);

	int updateAnswerStatus(AdminAnswerDTO answer);

	List<LevelUpDTO> selectLevelUpList();

	LevelUpDTO selectLevelUpDetail(int no);

	int insertLevelUp(LevelUpDTO levelUp);
	
	int updateLevelStatus(LevelUpDTO levelUp);

	int updateLevelUpCount(LevelUpDTO levelUp);

	int insertGuideEnroll(GuideDTO guide);
	
	int updateEnrollRequestStatus(GuideDTO guide);

	int updateEnrollGuideStatus(GuideDTO guide);
	
	int updateEnrollUserStatus(GuideDTO guide);

	int insertWorkerEnroll(AdminDTO admin);

	List<GuideDTO> selectGuideInforamtionList();

	GuideDTO selectGuideInformationDetail(int no);

	int insertGuideInformationFix(GuideDTO guide);
	
	int updateGuideInformationRequestStatus(GuideDTO guide);
}
