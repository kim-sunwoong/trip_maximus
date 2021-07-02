package com.maximusteam.tripfulaxel.guide.model.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.guide.model.dao.GuideMapper;
import com.maximusteam.tripfulaxel.guide.model.dto.GuideImageDTO;

@Service
public class GuideServiceImpl implements GuideService {

	@Inject
	private final GuideMapper guideMapper;
	
	public GuideServiceImpl(GuideMapper guideMapper) {
		this.guideMapper = guideMapper;
	}

	@Override
	public boolean insertImage(List<GuideImageDTO> imageList, int tableCode) {

		int result = 0;
		
		switch(tableCode) {
		    case 1:
		    	for(GuideImageDTO guideImageDTO : imageList) {
					result += guideMapper.insertGuideImage(guideImageDTO);
				}				
		    	break;
		    case 2:
				for(GuideImageDTO tripImageDTO : imageList) {
					result += guideMapper.insertTripImage(tripImageDTO);
				}
				break;
		}
		
		return (result == imageList.size())? true : false;
	}
}
