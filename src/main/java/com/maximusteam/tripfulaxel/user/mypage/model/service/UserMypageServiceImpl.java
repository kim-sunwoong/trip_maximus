package com.maximusteam.tripfulaxel.user.mypage.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.user.model.dto.UserDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dao.UserMypageMapper;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.GuideTripApplyDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.InquiryDTO;
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
	public List<JoinTripListDTO> selectJoinList(int id) {
		return mapper.selectJoinList(id);
	}
	@Override
	public List<JoinTripListDTO> selectJoinList2(int id) {
		return mapper.selectJoinList2(id);
	}
	
	@Override
	public List<GuideTripApplyDTO> selectguideTripList(int id) {
		return mapper.selectguideTripList(id);
	}

	@Override
	public List<TestDTO> test() {
		return mapper.test();
	}

	@Override
	public List<GuideTripApplyDTO> selectMyTripReviewList(int id) {
		return mapper.selectMyTripReviewList(id);
	}

	@Override
	public List<JoinTripListDTO> selectMyJoinList(int id) {
		return mapper.selectMyJoinList(id);
	}
	@Override
	public List<JoinTripListDTO> selectMyJoinList2(int id) {
		return mapper.selectMyJoinList2(id);
	}

	@Override
	public UserDTO selectUserInfo(int id) {
		return mapper.selectUserInfo(id);
	}
	
	@Override
	public int updateUserPwd(UserDTO user) {
		return mapper.updateUserPwd(user);
	}

	
	@Override
	public List<ReqListDTO> selectRequestList(int id) {
		return mapper.selectRequestList(id);
	}

	
	@Override
	public int insertRequest(Map<String, Object> map) {
		return mapper.insertRequest(map);
	}
	@Override
	public int selectRepPK() {
		return mapper.selectRepPK();
	}
	@Override
	public int insertReqImg(Map<String, Object> map) {
		return mapper.insertReqImg(map);
	}

	
	@Override
	public List<InquiryDTO> selectInquiry(int id) {
		return mapper.selectInquiry(id);
	}

	
	@Override
	public int insertReview(Map<String, Object> map) {
		int result = mapper.insertReview(map);
		System.out.println(result);
		return result;
	}

	@Override
	public int selectRevPK(Map<String, Object> map) {
		return mapper.selectRevPK(map);
	}
	
	@Override
	public int insertrevImg(Map<String, Object> map) {
		return mapper.insertrevImg(map);
	}

	@Override
	public int selectjtaCode(int id) {
		return mapper.selectjtaCode(id);
	}

	
	





	

	
	
	
}
