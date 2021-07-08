package com.maximusteam.tripfulaxel.user.mypage.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.user.mypage.model.dao.UserMypageMapper;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.GuideTripApplyDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.JoinTripListDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.ReqListDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.TestDTO;

@Service
public class UserMypageServiceImpl implements UserMypageService{

	private UserMypageMapper mapper;
	
	@Autowired
	public UserMypageServiceImpl(UserMypageMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public List<JoinTripListDTO> selectJoinList() {
		return mapper.selectJoinList();
	}

	@Override
	public List<JoinTripListDTO> selectJoinList2() {
		return mapper.selectJoinList2();
	}
	
	@Override
	public List<GuideTripApplyDTO> selectguideTripList() {
		return mapper.selectguideTripList();
	}

	@Override
	public List<TestDTO> test() {
		return mapper.test();
	}

	@Override
	public List<GuideTripApplyDTO> selectMyTripReviewList() {
		return mapper.selectMyTripReviewList();
	}

	@Override
	public List<JoinTripListDTO> selectMyJoinList() {
		return mapper.selectMyJoinList();
	}

	@Override
	public List<JoinTripListDTO> selectMyJoinList2() {
		return mapper.selectMyJoinList2();
	}

	@Override
	public List<ReqListDTO> selectRequestList(int id) {
		return mapper.selectRequestList(id);
	}

	@Override
	public int insertRequest(Map<String, Object> map) {
		return mapper.insertRequest(map);
	}

	
	
	
}
