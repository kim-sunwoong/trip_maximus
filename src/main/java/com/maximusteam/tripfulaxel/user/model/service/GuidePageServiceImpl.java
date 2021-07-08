package com.maximusteam.tripfulaxel.user.model.service;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.maximusteam.tripfulaxel.user.model.dao.GuidePageMapper;
import com.maximusteam.tripfulaxel.user.model.dto.TripReviewDTO;

/**
 * @author JJY
 *
 */
@Repository
public class GuidePageServiceImpl implements GuidePageService {

	private final GuidePageMapper mapper;

	public GuidePageServiceImpl(GuidePageMapper mapper) {
		this.mapper = mapper;
	}

	/**
	 * 후기관리
	 */
	@Override
	public List<TripReviewDTO> selectGuideReview(TripReviewDTO tripreview) {
		
		return mapper.selectGuideReview(tripreview);
	}

	
	
	/**
	 * 후기 댓글 
	 */
	@Override
	public boolean insertReply(TripReviewDTO tripreview) {
		
		return mapper.insertReply(tripreview) > 0? true:false;
	}
	
	
	
	
}
