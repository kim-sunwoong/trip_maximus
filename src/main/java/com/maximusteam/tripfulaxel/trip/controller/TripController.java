package com.maximusteam.tripfulaxel.trip.controller;

import java.util.ArrayList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.maximusteam.tripfulaxel.trip.model.dto.TripDTO;
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
		
		List<TripDTO> joinTripList = tripService.selectJoinTripList("join");
		
		System.out.println(joinTripList);
		model.addAttribute("joinTrip", joinTripList);
		
		return "user/trip/joinTripList";
		
	}
}
