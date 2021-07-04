package com.maximusteam.tripfulaxel.guide.model.dao;

import com.maximusteam.tripfulaxel.admin.model.dto.ExamineDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.GuideDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.GuideTripDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripCourseDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripImageDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripRegistListDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripThemeChoiceDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripTransitChoiceDTO;

public interface GuideMapper {

	int insertGuideImage(TripImageDTO tripImageDTO); 
	int insertTripImage(TripImageDTO tripImageDTO);
	int insertGuide(GuideDTO guideDTO);
	int insertTrip(TripDTO tripDTO);
	int insertTripRegistList(TripRegistListDTO tripRegistListDTO);
	int insertExamine(ExamineDTO examineDTO);
	int insertGuideTrip(GuideTripDTO guideTripDTO);
	int insertTheme(TripThemeChoiceDTO tripThemeChoiceDTO);
	int insertTransit(TripTransitChoiceDTO tripTransitChoiceDTO);
	int insertTripCourse(TripCourseDTO tripCourseDTO); 
}
