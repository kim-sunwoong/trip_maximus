package com.maximusteam.tripfulaxel.guide.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController("/guide/*")
public class userGuideController {

	@RequestMapping(value="insert", method=RequestMethod.POST)
	public String insertGuide(@RequestParam(value="imageId") MultipartFile mf) {
		
		System.out.println(mf);
		
		System.out.println("rest api inside");
		return "redirect:/user/main";
	}
}
