package com.maximusteam.tripfulaxel.guide.model.dao;

import com.maximusteam.tripfulaxel.guide.model.dto.GuideImageDTO;

public interface GuideMapper {

	int insertGuideImage(GuideImageDTO guideImageDTO); 
	int insertTripImage(GuideImageDTO tripImageDTO); 
}
