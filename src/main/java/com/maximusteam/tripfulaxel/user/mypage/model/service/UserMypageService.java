package com.maximusteam.tripfulaxel.user.mypage.model.service;

import java.util.List;

import com.maximusteam.tripfulaxel.user.mypage.model.dto.GuideTripApplyDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.JoinTripListDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.ReqListDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.TestDTO;

public interface UserMypageService {

	List<JoinTripListDTO> selectJoinList();
	List<JoinTripListDTO> selectJoinList2();

	List<GuideTripApplyDTO> selectguideTripList();

	List<TestDTO> test();
	
	List<GuideTripApplyDTO> selectMyTripReviewList();
	
	List<JoinTripListDTO> selectMyJoinList();
	List<JoinTripListDTO> selectMyJoinList2();
	
	List<ReqListDTO> selectRequestList();


	
	
}
