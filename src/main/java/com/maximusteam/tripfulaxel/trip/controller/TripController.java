package com.maximusteam.tripfulaxel.trip.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.maximusteam.tripfulaxel.trip.model.dto.ReviewDTO;
import com.maximusteam.tripfulaxel.trip.model.dto.SortCondition;
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
	
	@RequestMapping("select")
	public String selectTrip(@RequestParam int tripCode, @ModelAttribute SortCondition condition, Model model) {
		System.out.println("code : " + tripCode);
		System.out.println("type : " + condition);
		
		Map<String, Object> parameter = new HashMap<String, Object>();
		parameter.put("tripCode", tripCode);
		parameter.put("condition", condition);
		
		List<ReviewDTO> reviewList = new ArrayList<ReviewDTO>();
		reviewList = tripService.selectReviewList(tripCode);
		
		if(condition.getTripType() == 2) {
			return "user/trip/joinTripDetail";
		} else if(condition.getTripType() == 1) {
			return "user/trip/guideTripDetail";
		} else {
			return "user/trip/myTripDetail";
		}
	}
	
	@RequestMapping("select/list")
	public String selectTripList(@ModelAttribute SortCondition condition ,Model model) {
		
		Map<String, Object> parameter = new HashMap<String, Object>();
		parameter.put("condition", condition);
		List<TripDTO> tripList = tripService.selectTripList(parameter);
		
		int count = 0;
		
		for(TripDTO trip : tripList) {
			
			List<TripCourseDTO> courseList = trip.getTripCourseList();
			
			Iterator<TripCourseDTO> iterator = courseList.iterator();
			while(iterator.hasNext()) {
				TripCourseDTO course = iterator.next();
				if(course.getCourseCode() == 0) {
					iterator.remove();
				}
			}
		}
		
		for(TripDTO trip : tripList) {
			
			System.out.println("count : " + count);
			count++;
			System.out.println(trip);
			for(TripImageDTO image : trip.getTripImgList()) {
				System.out.println(image);
			}
			for(TripCourseDTO course : trip.getTripCourseList()) {
				System.out.println(course);
			}
			for(TripThemeDTO theme : trip.getTripThemeList()) {
				System.out.println(theme);
			}
			for(TripTransitDTO transit : trip.getTripTransitList()) {
				System.out.println(transit);
			}
			
		}
		
		
		System.out.println(tripList);
		model.addAttribute("condition", condition);
		model.addAttribute("tripList", tripList);
		
		if(condition.getTripType() == 2) {
			return "user/trip/joinTripList";
		} else if(condition.getTripType() == 1) {
			return "user/trip/guideTripList";
		} else {
			return "user/trip/myTripList";
		}
		
	}
}
