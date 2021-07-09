package com.maximusteam.tripfulaxel.guide.model.service;

import java.util.List;

import com.maximusteam.tripfulaxel.admin.model.dto.ExamineDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.GuideDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.GuideStyleChoiceDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.GuideTripDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripCourseDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripImageDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripRegistListDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripThemeChoiceDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripTransitChoiceDTO;

public interface GuideTripService extends TripCommonService{

	boolean insertGuide(GuideDTO guideDTO);

	boolean insertGuideStyleChoice(List<GuideStyleChoiceDTO> styleList);

	boolean insertExamine(ExamineDTO examineDTO);

	boolean insertGuideTrip(GuideTripDTO guideTripDTO);
	
	
}
