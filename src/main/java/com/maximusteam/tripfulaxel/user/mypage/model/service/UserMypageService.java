package com.maximusteam.tripfulaxel.user.mypage.model.service;

import java.util.List;
import java.util.Map;

import com.maximusteam.tripfulaxel.user.model.dto.UserDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.GuideTripApplyDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.InquiryDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.JoinTripListDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.ReqImageDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.ReqListDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.ReviewDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.TestDTO;

public interface UserMypageService {

	List<JoinTripListDTO> selectJoinList(int id);
	List<JoinTripListDTO> selectJoinList2(int id);

	List<GuideTripApplyDTO> selectguideTripList(int id);

	List<TestDTO> test();
	
	List<GuideTripApplyDTO> selectMyTripReviewList(int id);
	
	List<JoinTripListDTO> selectMyJoinList(int id);
	List<JoinTripListDTO> selectMyJoinList2(int id);
	
	UserDTO selectUserInfo(int id);
	int updateUserPwd(UserDTO user);
	
	List<ReqListDTO> selectRequestList(int id);
	
	int insertRequest(Map<String, Object> map);
	ReqImageDTO selectRepPK();
	int insertReqImg(Map<String, Object> map);

	
	List<InquiryDTO> selectInquiry(int id);
	
	int insertReview(Map<String, Object> map);
	int selectRevPK(Map<String, Object> map);
	int insertrevImg(ReviewDTO review);
	int selectjtaCode(int id);
	


	
	
}
