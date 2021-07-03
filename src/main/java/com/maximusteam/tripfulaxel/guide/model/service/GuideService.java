package com.maximusteam.tripfulaxel.guide.model.service;

import java.util.List;

import com.maximusteam.tripfulaxel.guide.model.dto.TripImageDTO;

public interface GuideService {

	boolean insertImage(List<TripImageDTO> imageList, int tableCode);
	
}
