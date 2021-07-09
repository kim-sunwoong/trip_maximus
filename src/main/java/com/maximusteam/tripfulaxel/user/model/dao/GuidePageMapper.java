package com.maximusteam.tripfulaxel.user.model.dao;

import java.util.List;
import java.util.Map;

import com.maximusteam.tripfulaxel.user.model.dto.TripReviewDTO;

public interface GuidePageMapper {

	List<TripReviewDTO> selectGuideReview(int guideCode);

	int insertReply(TripReviewDTO tripreview);

	List<TripReviewDTO> selectMyGoods(int guideCode);

	int selectStar(int guideCode);

	int selectCount(int guideCode);

	int updateStopSell(int guideCode);

	int updateStartSell(int guideCode);

}
