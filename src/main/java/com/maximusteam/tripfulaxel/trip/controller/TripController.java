package com.maximusteam.tripfulaxel.trip.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.maximusteam.tripfulaxel.trip.model.dto.TripDTO;

@Controller
@RequestMapping("/trip/*")
public class TripController {

	
	@RequestMapping("join/select/list")
	public String selectJoinTripList(Model model) {
		
		List<TripDTO> joinTripList = new ArrayList<TripDTO>();
		
		
		
		
		model.addAttribute("joinTrip", joinTripList);
		
		return "user/main/joinTripList";
		
	}
}
