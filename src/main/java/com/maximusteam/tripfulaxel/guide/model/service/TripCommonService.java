package com.maximusteam.tripfulaxel.guide.model.service;

import java.util.List;

import com.maximusteam.tripfulaxel.guide.model.dto.TripCourseDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripImageDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripRegistListDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripThemeChoiceDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripTransitChoiceDTO;

public interface TripCommonService {

	/* 이미지 관련 공통 메소드 */
	boolean insertImage(List<TripImageDTO> imageList, int tableCode);
	boolean insertTripImage(List<TripImageDTO> tripImageList);

	boolean updateTripImage(List<TripImageDTO> tripImageList);

	/* 여행 등록시 필요한 공통 메소드 */
	boolean insertTrip(TripDTO tripDTO);
	boolean insertTripRegistList(TripRegistListDTO tripRegistListDTO);
	boolean insertTheme(List<TripThemeChoiceDTO> themeList);
	boolean insertTransit(List<TripTransitChoiceDTO> transitList);
	boolean insertTripCourse(List<TripCourseDTO> tripCourseList);
	
}
