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


@Service
public class AdminServiceImpl implements AdminService {

	private AdminMapper mapper;
	
	@Autowired
	public AdminServiceImpl(AdminMapper mapper) {
		System.out.println("연결제발!!!!!!!!!!!!!!!");
		this.mapper = mapper;
	}

	@Override
	public List<AdminDTO> selectAdminList() {
		System.out.println("관리자 리스트111");
		return mapper.selectAdmin();
	}

	@Override
	public List<MemberDTO> selectMemberList() {
		System.out.println("회원관리 리스트222");
		return mapper.selectMember();
	}

	@Override
	public List<ReportDTO> selectReportList() {
		System.out.println("신고 리스트333");
		return mapper.selectReport();
	}

	@Override
	public List<GuideDTO> selectGuideList() {
		
		return mapper.selectGuide();
	}

	@Override
	public List<CalculateDTO> selectCalculateList() {
		return mapper.selectCalculate();
	}

	
	
}
