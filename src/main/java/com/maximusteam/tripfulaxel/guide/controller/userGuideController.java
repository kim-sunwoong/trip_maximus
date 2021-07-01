package com.maximusteam.tripfulaxel.guide.controller;

import javax.inject.Inject;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponentsBuilder;

import com.maximusteam.tripfulaxel.guide.model.dto.GuideRegistFormDTO;
import com.maximusteam.tripfulaxel.guide.model.service.GuideService;

@RestController
public class userGuideController {

	@Inject
	private final GuideService guideService;
	
	public userGuideController(GuideService guideService) {
		this.guideService = guideService;
	}
	
	@RequestMapping(value = "/api/guides", method = RequestMethod.POST)
	public ModelAndView insertGuide(@ModelAttribute GuideRegistFormDTO guideRegistFormDTO
											, ModelAndView mv
											, UriComponentsBuilder ucBuilder){
		
		System.out.println(guideRegistFormDTO);
		
//		guideService.saveCustomer(guideRegistFormDTO);
//		
//		final HttpHeaders headers = new HttpHeaders();
//		headers.setLocation(ucBuilder.path("/customer/{custName}").buildAndExpand(customer.getCustName()).toUri());
//		
//		return new ResponseEntity<Void>(headers, HttpStatus.CREATED);

		
		
		mv.setViewName("jsonView");
		
		return mv;
	}
	
	
	
}
