package com.maximusteam.tripfulaxel.user.mypage.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.user.mypage.model.dao.UserMypageMapper;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.MypageTripDTO;

@Service
public class UserMypageServiceImpl implements UserMypageService{

	private UserMypageMapper mapper;
	
	@Autowired
	public UserMypageServiceImpl(UserMypageMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public List<MypageTripDTO> selectJoinList() {
		return mapper.selectJoin();
	}
	
	
	
}
