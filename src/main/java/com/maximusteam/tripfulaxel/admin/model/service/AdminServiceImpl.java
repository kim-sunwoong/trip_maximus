package com.maximusteam.tripfulaxel.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.admin.model.dao.AdminMapper;
import com.maximusteam.tripfulaxel.admin.model.dto.AdminDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.CalculateDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.GuideDTO;
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
		return mapper.insertReport(report);
	}

	@Override
	public int updateReportStatus(ReportDTO report) {
		return mapper.updateReportStatus(report);
	}

	@Override
	public int updateReportCount(ReportDTO report) {
		return mapper.updateReportCount(report);
	}







	
	
}
