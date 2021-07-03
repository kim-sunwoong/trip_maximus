package com.maximusteam.tripfulaxel.guide.model.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.guide.model.dao.GuideMapper;
import com.maximusteam.tripfulaxel.guide.model.dto.TripImageDTO;

@Service
public class GuideServiceImpl implements GuideService {

	@Inject
	private final GuideMapper guideMapper;
	
	public GuideServiceImpl(GuideMapper guideMapper) {
		this.guideMapper = guideMapper;
	}

	@Override
	public boolean insertImage(List<TripImageDTO> imageList, int tableCode) {

		int result = 0;
		
		switch(tableCode) {
		    case 1:
		    	// 가이드 개인 사진 관련 INSERT - ID, PROFILE, CERTIFICATIONS
		    	for(TripImageDTO tripImageDTO : imageList) {
					result += guideMapper.insertGuideImage(tripImageDTO);
				}				
		    	break;
		    case 2:
		    	// 가이드 여행 관련 사진 INSERT - TRIP, COURSE
				for(TripImageDTO tripImageDTO : imageList) {
					result += guideMapper.insertTripImage(tripImageDTO);
				}
				break;
		}
		
		return (result == imageList.size())? true : false;
	}
}
