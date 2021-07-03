package com.maximusteam.tripfulaxel.guide.model.dao;

import com.maximusteam.tripfulaxel.guide.model.dto.TripImageDTO;

public interface GuideMapper {

	int insertGuideImage(TripImageDTO tripImageDTO); 
	int insertTripImage(TripImageDTO tripImageDTO); 
}
