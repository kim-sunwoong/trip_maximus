package com.maximusteam.tripfulaxel.guide.model.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.admin.model.dto.ExamineDTO;
import com.maximusteam.tripfulaxel.guide.model.dao.GuideMapper;
import com.maximusteam.tripfulaxel.guide.model.dto.GuideDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.GuideTripDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripCourseDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripImageDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripRegistListDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripThemeChoiceDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripTransitChoiceDTO;

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

	@Override
	public boolean insertGuide(GuideDTO guideDTO) {

		int result = guideMapper.insertGuide(guideDTO);
		
		return result > 0 ? true : false;
	}

	@Override
	public boolean insertTrip(TripDTO tripDTO) {
		
		int result = guideMapper.insertTrip(tripDTO);
		
		return result > 0 ? true : false;
	}

	@Override
	public boolean insertTripRegistList(TripRegistListDTO tripRegistListDTO) {
		
		int result = guideMapper.insertTripRegistList(tripRegistListDTO);
		
		return result > 0 ? true : false;
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

	@Override
	public boolean insertTheme(List<TripThemeChoiceDTO> themeList) {

		int result = 0;
		
		for(int i = 0; i < themeList.size(); i++) {
			result += guideMapper.insertTheme(themeList.get(i));
		}
		
		return themeList.size() == result ? true : false;
	}

	@Override
	public boolean insertTransit(List<TripTransitChoiceDTO> transitList) {

		int result = 0;
		
		for(int i = 0; i < transitList.size(); i++) {
			result += guideMapper.insertTransit(transitList.get(i));
		}
		
		return transitList.size() == result ? true : false;
	}

	@Override
	public boolean insertTripImage(List<TripImageDTO> tripImageList) {
		
		int result = 0;
		
		for(int i = 0; i < tripImageList.size(); i++) {
			result += guideMapper.insertTripImage(tripImageList.get(i));
		}
		
		return tripImageList.size() == result ? true : false;
	}

	@Override
	public boolean insertTripCourse(List<TripCourseDTO> tripCourseList) {

		int result = 0;
		
		for(int i = 0; i < tripCourseList.size(); i++) {
			result += guideMapper.insertTripCourse(tripCourseList.get(i));
		}
		
		return tripCourseList.size() == result ? true : false;
	}
}
