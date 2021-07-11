package com.maximusteam.tripfulaxel.user.model.service;

import java.util.List;

import com.maximusteam.tripfulaxel.user.model.dto.TripReviewDTO;

/**
 * @author JJY
 *
 */

public interface GuidePageService {

	List<TripReviewDTO> selectGuideReview(int guideCode);

	int insertReply(TripReviewDTO tripreview);

	List<TripReviewDTO> selectMyGoods(int guideCode);

	int selectCount(int guideCode);

	int selectStar(int guideCode);

	int updateStopSell(int guideCode);

	int updateStartSell(int guideCode);

	List<TripReviewDTO> selectGuideContact(int guideCode);

	List<TripReviewDTO> selectGuideDetail(int tripInquiryCode);

	int insertContactDetailReply(TripReviewDTO tripreview);
	
		

}
