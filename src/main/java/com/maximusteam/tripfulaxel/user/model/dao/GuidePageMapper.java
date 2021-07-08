package com.maximusteam.tripfulaxel.user.model.dao;

import java.util.List;

import com.maximusteam.tripfulaxel.user.model.dto.TripReviewDTO;

public interface GuidePageMapper {

	List<TripReviewDTO> selectGuideReview(TripReviewDTO tripreview);

	int insertReply(TripReviewDTO tripreview);

}
