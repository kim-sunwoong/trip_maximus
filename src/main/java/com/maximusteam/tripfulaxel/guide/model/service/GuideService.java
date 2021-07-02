package com.maximusteam.tripfulaxel.guide.model.service;

import java.util.List;

import com.maximusteam.tripfulaxel.guide.model.dto.GuideImageDTO;

public interface GuideService {

	boolean insertImage(List<GuideImageDTO> imageList, int tableCode);
	
}
