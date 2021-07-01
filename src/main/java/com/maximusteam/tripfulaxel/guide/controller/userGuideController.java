package com.maximusteam.tripfulaxel.guide.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class userGuideController {

	@RequestMapping(value = "/api/guides", method = RequestMethod.POST)
	public ResponseEntity<Void> insertGuide(@RequestBody GuideRegistInfoDTO guideRegistInfoDTO)
	
	
	
}
