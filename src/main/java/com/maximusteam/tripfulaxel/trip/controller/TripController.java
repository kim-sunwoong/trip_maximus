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
		
		for(TripDTO trip : joinTripList) {
			System.out.println(trip);
			for(TripCourseDTO course : trip.getTripCourseList()) {
				System.out.println(course);
			}
			for(TripImageDTO image : trip.getTripImgList()) {
				System.out.println(image);
			}
		}
		
		System.out.println(joinTripList);
		model.addAttribute("joinTrip", joinTripList);
		
		return "user/trip/joinTripList";
		
	}
}
