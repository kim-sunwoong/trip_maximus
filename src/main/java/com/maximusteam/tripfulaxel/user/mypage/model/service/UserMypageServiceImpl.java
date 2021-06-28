package com.maximusteam.tripfulaxel.user.mypage.model.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.maximusteam.tripfulaxel.user.mypage.model.dao.UserMypageMapper;

public class UserMypageServiceImpl implements UserMypageService{

	private final UserMypageMapper mypageMapper;
	
	@Autowired
	public UserMypageServiceImpl(UserMypageMapper mypageMapper) {
		this.mypageMapper = mypageMapper;
	}
	
	
	
}
