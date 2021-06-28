package com.maximusteam.tripfulaxel.trip.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.maximusteam.tripfulaxel.trip.model.dto.TripCourseDTO;
import com.maximusteam.tripfulaxel.trip.model.dto.TripDTO;
import com.maximusteam.tripfulaxel.trip.model.dto.TripImageDTO;
import com.maximusteam.tripfulaxel.trip.model.dto.TripThemeDTO;
import com.maximusteam.tripfulaxel.trip.model.dto.TripTransitDTO;
import com.maximusteam.tripfulaxel.trip.model.service.TripServiceImpl;

@Controller
@RequestMapping("/trip/*")
public class TripController {

	private final TripServiceImpl tripService;
	
	@Autowired
	public TripController(TripServiceImpl tripService) {
		this.tripService = tripService;
	}
	
	@RequestMapping("join/select/list")
	public String selectJoinTripList(Model model) {
		
		String tripType = "join";
		Map<String, String> parameter = new HashMap<String, String>();
		parameter.put("tripType", tripType);
		List<TripDTO> joinTripList = tripService.selectTripList(parameter);
		
		int count = 0;
		for(TripDTO trip : joinTripList) {
			System.out.println( count  + " 번째 여행");
			System.out.println(trip);
			count++;
			for(TripCourseDTO course : trip.getTripCourseList()) {
				System.out.println(course);
			}
			for(TripImageDTO image : trip.getTripImgList()) {
				System.out.println(image);
			}
			for(TripThemeDTO theme : trip.getTripThemeList()) {
				System.out.println(theme);
			}
			for(TripTransitDTO transit : trip.getTripTransitList()) {
				System.out.println(transit);
			}
		}
		
		System.out.println(joinTripList);
		model.addAttribute("joinTrip", joinTripList);
		
		return "user/trip/joinTripList";
		
	}
}
