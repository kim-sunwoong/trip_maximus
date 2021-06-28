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
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@RequestMapping("select/list")
	public String selectJoinTripList(@RequestParam String tripType, Model model) {
		System.out.println(tripType);
		Map<String, String> parameter = new HashMap<String, String>();
		parameter.put("tripType", tripType);
		List<TripDTO> tripList = tripService.selectTripList(parameter);
		
		int count = 0;
		for(TripDTO trip : tripList) {
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
		
		System.out.println(tripList);
		model.addAttribute("tripList", tripList);
		
		if(tripType.equals("join")) {
			return "user/trip/joinTripList";
		} else if(tripType.equals("guide")) {
			return "user/trip/guideTripList";
		} else {
			return "user/trip/myTripList";
		}
		
	}
}
