package com.maximusteam.tripfulaxel.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.admin.model.dao.AdminMapper;
import com.maximusteam.tripfulaxel.admin.model.dto.AdminDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.AdminAnswerDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.CalculateDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.GuideDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.GuideEnrollDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.LevelUpDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.MemberDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.ReportDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.TaxDTO;


@Service
public class AdminServiceImpl implements AdminService {

	private AdminMapper mapper;
	
	@Autowired
	public AdminServiceImpl(AdminMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public List<AdminDTO> selectAdminList() {
		return mapper.selectAdmin();
	}

	@Override
	public List<MemberDTO> selectMemberList() {
		return mapper.selectMember();
	}

	@Override
	public List<ReportDTO> selectReportList(ReportDTO type) {
		return mapper.selectReport(type);
	}

	@Override
	public List<GuideDTO> selectGuideList() {
		return mapper.selectGuide();
	}

	@Override
	public List<CalculateDTO> selectCalculateList() {
		return mapper.selectCalculate();
	}

	@Override
	public List<TaxDTO> selectTaxList() {
		return mapper.selectTax();
	}

	@Override
	public MemberDTO selectMemberDetail(int no) {
		return mapper.selectMemberDetail(no);

	}

	@Override
	public int deleteMember(int no) {
		
		return mapper.deleteMember(no);
	}

	@Override
	public int deleteAdmin(int no) {
		return mapper.deleteAdmin(no);
	}

	@Override
	public ReportDTO selectReportDetail(int no) {
		return mapper.selectReportDetail(no);
	}

	@Override
	public int insertReport(ReportDTO report) {
		
		int result = 0; 
		result = mapper.insertReport(report);
		updateReportStatus(report);
		
		if ( result > 0 && report.getExamineCode() == 2) {
				updateReportCount(report);
		} 
		
		return result;
	}

	@Override
	public int updateReportStatus(ReportDTO report) {
		return mapper.updateReportStatus(report);
	}

	@Override
	public int updateReportCount(ReportDTO report) {
		return mapper.updateReportCount(report);
	}

	@Override
	public GuideDTO selectEnrollDetail(int no) {
		return mapper.selectEnrollDetail(no);
	}

	@Override
	public GuideEnrollDTO selectProfilePic(int no) {
		return mapper.selectProfilePic(no);
	}

	@Override
	public GuideEnrollDTO selectIdPic(int no) {
		return mapper.selectIdPic(no);
	}

	@Override
	public List<AdminAnswerDTO> selectMemberCategory(AdminAnswerDTO type) {
		return mapper.selectAnswer(type);
	}

	@Override
	public AdminAnswerDTO selectAnswerDetail(int no) {
		return mapper.selectAnswerDetail(no);
	}

	@Override
	public int insertAnswer(AdminAnswerDTO answer) {
		int result = 0; 
		result = mapper.insertAnswer(answer);
		
		if (result > 0 ) {
			updateAnswerStatus(answer);
		}
		
		return result;
	}

	@Override
	public int updateAnswerStatus(AdminAnswerDTO answer) {
		return mapper.updateAnswerStatus(answer);
	}

	@Override
	public List<LevelUpDTO> selectLevelUpList() {
		return mapper.selectLevelUpList();
	}

	@Override
	public LevelUpDTO selectLevelUpDetail(int no) {
		return mapper.selectLevelUpDetail(no);
	}

	@Override
	public int insertLevelUp(LevelUpDTO levelUp) {
		
		int result = 0;
		result = mapper.insertLevelUp(levelUp);
		updateLevelStatus(levelUp);
		
		if( result > 0 && levelUp.getExamineCode() == 2 ) {
			updateLevelUpCount(levelUp);
		}
		return result;
	}

	@Override
	public int updateLevelStatus(LevelUpDTO levelUp) {
		return mapper.updateLevelStatus(levelUp);
	}

	@Override
	public int updateLevelUpCount(LevelUpDTO levelUp) {
		return mapper.updateLevelUpCount(levelUp);
	}

	@Override
	public int insertGuideEnroll(GuideDTO guide) {
		
		int result = 0;
		result = mapper.insertGuideEnroll(guide);
		result += updateEnrollRequestStatus(guide);
		
		if( result > 1 && guide.getExamineCode() == 2 && guide.getRegistTypeCode() == 3) {
			result += updateEnrollGuideStatus(guide);
			result += updateEnrollUserStatus(guide);
			result += updateEnrollRegistStatus(guide);
			
			if(result > 4) {
				return result;
			}
		} else if ( result > 1 && guide.getExamineCode() == 3 && guide.getRegistTypeCode() == 4) {
			result += updateEnrollRegistStatus(guide);
			
			if(result > 2) {
				return result;
			}
		} 
		
		return result;
	}

	@Override
	public int updateEnrollRequestStatus(GuideDTO guide) {
		return mapper.updateEnrollRequestStatus(guide);
	}

	@Override
	public int updateEnrollGuideStatus(GuideDTO guide) {
		return mapper.updateEnrollGuideStatus(guide);
	}

	@Override
	public int insertWorkerEnroll(AdminDTO admin) {
		return mapper.insertWorkerEnroll(admin);
	}

	@Override
	public int updateEnrollUserStatus(GuideDTO guide) {
		return mapper.updateEnrollUserStatus(guide);
	}

	@Override
	public List<GuideDTO> selectGuideInforamtionList() {
		return mapper.selectGuideInforamtionList();
	}

	@Override
	public GuideDTO selectGuideInformationDetail(int no) {
		return mapper.selectGuideInformationDetail(no);
	}

	
	@Override
	public int insertGuideInformationFix(GuideDTO guide) {
		
		int result = 0;
		result = mapper.insertGuideInformationFix(guide);
		result += updateGuideInformationRequestStatus(guide);
				
		if( result > 1 && guide.getExamineCode() == 2 && guide.getRegistTypeCode() == 3) {
			result += updateGuideInformationRegistStatus(guide);
			
			if(result > 2) {
				return result;
			}
		} else if (result > 1 && guide.getExamineCode() == 3 && guide.getRegistTypeCode() == 2) {
			result += updateGuideInformationRegistStatus(guide);
			
			if(result > 2) {
				return result;
			}
		}
		
		return result;
	}

	@Override
	public int updateGuideInformationRequestStatus(GuideDTO guide) {
		return mapper.updateGuideInformationRequestStatus(guide);
	}

	@Override
	public int updateEnrollRegistStatus(GuideDTO guide) {
		return mapper.updateEnrollRegistStatus(guide);
	}

	@Override
	public int updateGuideInformationRegistStatus(GuideDTO guide) {
		return mapper.updateGuideInformationRegistStatus(guide);
	}
	/**
	 * 로그인용 메소드 
	 */
	@Override
	public AdminDTO selectLogin(AdminDTO admin) {
	
		return mapper.selectLogin(admin);
	}

	@Override
	public List<CalculateDTO> selectCalculateDetail(int no) {
		return mapper.selectCalculateDetail(no);
	}



	



}