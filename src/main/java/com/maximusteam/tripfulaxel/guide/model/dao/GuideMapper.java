package com.maximusteam.tripfulaxel.guide.model.dao;

import java.util.List;

import com.maximusteam.tripfulaxel.guide.model.dto.GuideImageDTO;

public interface GuideMapper {

	int insertGuideImage(List<GuideImageDTO> imageList); 
	int insertTripImage(List<GuideImageDTO> imageList); 
}
