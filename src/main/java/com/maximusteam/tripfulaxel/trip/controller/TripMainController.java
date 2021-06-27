package com.maximusteam.tripfulaxel.trip.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//@Controller
//@RequestMapping("/*")
public class TripMainController {

//	@RequestMapping(value= {"/","main"})
	public String tripLocation() {
		return "user/trip/tripMain";
	}
	
}
