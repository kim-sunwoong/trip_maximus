package com.maximusteam.tripfulaxel.user.mypage.model.dao;

import java.util.List;

import com.maximusteam.tripfulaxel.user.mypage.model.dto.GuideTripApplyDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.JoinTripListDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.TestDTO;

public interface UserMypageMapper {

	List<JoinTripListDTO> selectJoinList();
	List<JoinTripListDTO> selectJoinList2();

	List<GuideTripApplyDTO> selectguideTripList();

	List<TestDTO> test();
	
	List<GuideTripApplyDTO> selectMyTripReviewList();
	
	List<JoinTripListDTO> selectMyJoinList();
	List<JoinTripListDTO> selectMyJoinList2();


}
