package com.maximusteam.tripfulaxel.user.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.user.model.dto.TripReviewDTO;

/**
 * @author JJY
 *
 */
@Service
public interface GuidePageService {

	List<TripReviewDTO> selectGuideReview(TripReviewDTO tripreview);

	boolean insertReply(TripReviewDTO tripreview);

}
