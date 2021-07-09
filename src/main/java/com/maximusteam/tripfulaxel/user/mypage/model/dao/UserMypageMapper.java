package com.maximusteam.tripfulaxel.user.mypage.model.dao;

import java.util.List;
import java.util.Map;

import com.maximusteam.tripfulaxel.user.mypage.model.dto.GuideTripApplyDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.InquiryDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.JoinTripListDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.ReqListDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.TestDTO;

public interface UserMypageMapper {

	List<JoinTripListDTO> selectJoinList();
	List<JoinTripListDTO> selectJoinList2();

	List<GuideTripApplyDTO> selectguideTripList();

	List<TestDTO> test();
	
	List<GuideTripApplyDTO> selectMyTripReviewList();
	
	List<JoinTripListDTO> selectMyJoinList(int id);
	List<JoinTripListDTO> selectMyJoinList2(int id);
	
	List<ReqListDTO> selectRequestList(int id);
	
	int insertRequest(Map<String, Object> map);
	
	List<InquiryDTO> selectInquiry(int id);
	
	int insertReview(Map<String, Object> map);


}
