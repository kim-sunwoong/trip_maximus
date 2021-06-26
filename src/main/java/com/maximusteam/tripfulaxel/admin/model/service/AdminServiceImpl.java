package com.maximusteam.tripfulaxel.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.admin.model.dao.AdminMapper;
import com.maximusteam.tripfulaxel.admin.model.dto.AdminDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.MemberDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.ReportDTO;


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
	public List<ReportDTO> selectReportList() {
		
		return mapper.selectReport();
	}

	
	
}
