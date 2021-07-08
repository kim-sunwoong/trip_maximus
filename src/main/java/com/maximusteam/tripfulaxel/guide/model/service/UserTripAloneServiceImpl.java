package com.maximusteam.tripfulaxel.guide.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.guide.model.dto.TripCourseDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripImageDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripRegistListDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripThemeChoiceDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripTransitChoiceDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.UserTripAloneDTO;

@Service
public class UserTripAloneServiceImpl implements UserTripAloneService{

	@Override
	public boolean insertUserTrip(UserTripAloneDTO userTripAloneDTO) {
		return false;
	}

	@Override
	public boolean insertImage(List<TripImageDTO> imageList, int tableCode) {
		return false;
	}

	@Override
	public boolean insertTripImage(List<TripImageDTO> tripImageList) {
		return false;
	}

	@Override
	public boolean updateTripImage(List<TripImageDTO> tripImageList) {
		return false;
	}

	@Override
	public boolean insertTrip(TripDTO tripDTO) {
		return false;
	}

	@Override
	public boolean insertTripRegistList(TripRegistListDTO tripRegistListDTO) {
		return false;
	}

	@Override
	public boolean insertTheme(List<TripThemeChoiceDTO> themeList) {
		return false;
	}

	@Override
	public boolean insertTransit(List<TripTransitChoiceDTO> transitList) {
		return false;
	}

	@Override
	public boolean insertTripCourse(List<TripCourseDTO> tripCourseList) {
		return false;
	}
}
