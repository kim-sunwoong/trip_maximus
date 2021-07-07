package com.maximusteam.tripfulaxel.trip.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/planner/*")
public class plannerController {

	@RequestMapping("/choose")
	public String choose() {
		return "user/main/tripPlanner";
	}
}
