package com.maximusteam.tripfulaxel.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.admin.model.dao.AdminMapper;
import com.maximusteam.tripfulaxel.admin.model.dto.AdminDTO;


@Service
public class AdminServiceImpl implements AdminService {

	private AdminMapper mapper;
	
	@Autowired
	public AdminServiceImpl(AdminMapper mapper) {
		System.out.println("서비스:ㅇㅇㅇ");
		this.mapper = mapper;
	}

	@Override
	public List<AdminDTO> selectAdmin() {
		System.out.println("서비스:1111111111111111111111111111112");
		return mapper.selectAdmin();
	}
	
}
