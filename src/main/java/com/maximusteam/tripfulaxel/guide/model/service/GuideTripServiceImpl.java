package com.maximusteam.tripfulaxel.guide.model.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.admin.model.dto.ExamineDTO;
import com.maximusteam.tripfulaxel.guide.model.dao.InsertTripMapper;
import com.maximusteam.tripfulaxel.guide.model.dto.GuideDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.GuideStyleChoiceDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.GuideTripDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripCourseDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripImageDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripRegistListDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripThemeChoiceDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripTransitChoiceDTO;

@Service
public class GuideTripServiceImpl extends TripCommonServiceImpl implements GuideTripService {

	@Inject
	private final InsertTripMapper guideMapper;
	
	public GuideTripServiceImpl(InsertTripMapper guideMapper) {
		this.guideMapper = guideMapper;
	}

	@Override
	public boolean insertGuide(GuideDTO guideDTO) {

		int result = guideMapper.insertGuide(guideDTO);
		
		return result > 0 ? true : false;
	}

	@Override
	public boolean insertGuideStyleChoice(List<GuideStyleChoiceDTO> styleList) {

		int result = 0;
		
		for(int i = 0; i < styleList.size(); i++) {
			result += guideMapper.insertGuideStyleChoice(styleList.get(i));
		}
		
		return styleList.size() == result ? true : false;
	}
	

	@Override
	public boolean insertExamine(ExamineDTO examineDTO) {
		
		int result = guideMapper.insertExamine(examineDTO);
		
		return result > 0 ? true : false;
	}

	@Override
	public boolean insertGuideTrip(GuideTripDTO guideTripDTO) {
		
		int result = guideMapper.insertGuideTrip(guideTripDTO);
		
		return result > 0 ? true : false;
	}

	
}
