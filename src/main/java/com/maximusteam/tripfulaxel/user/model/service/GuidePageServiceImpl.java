package com.maximusteam.tripfulaxel.user.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.user.model.dao.GuidePageMapper;
import com.maximusteam.tripfulaxel.user.model.dto.TripReviewDTO;

/**
 * @author JJY
 *
 */
@Service
public class GuidePageServiceImpl implements GuidePageService {

	private final GuidePageMapper mapper;

	@Autowired
	public GuidePageServiceImpl(GuidePageMapper mapper) {
		this.mapper = mapper;
	}

	/**
	 * 후기관리
	 */
	@Override
	public List<TripReviewDTO> selectGuideReview(int guideCode) {
		
		return mapper.selectGuideReview(guideCode);
	}

	/**
	 * 후기댓글
	 */
	@Override
	public int insertReply(TripReviewDTO tripreview) {
	
		return mapper.insertReply(tripreview);
	}

	/**
	 *  내여행상품 
	 */
	@Override
	public List<TripReviewDTO> selectMyGoods(int guideCode) {
	
		return mapper.selectMyGoods(guideCode);
	}

	/**
	 * 총 리뷰수 
	 */
	@Override
	public int selectCount(int guideCode) {
		
		return mapper.selectCount(guideCode);
	}

	/**
	 * 평균 별점 
	 */
	@Override
	public int selectStar(int guideCode) {
	
		return mapper.selectStar(guideCode);
	}


	
	
	
	
	
}
