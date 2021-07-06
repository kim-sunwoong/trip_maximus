package com.maximusteam.tripfulaxel.trip.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.maximusteam.tripfulaxel.trip.model.dto.GuideDTO;
import com.maximusteam.tripfulaxel.trip.model.dto.ImageDTO;
import com.maximusteam.tripfulaxel.trip.model.dto.ReviewDTO;
import com.maximusteam.tripfulaxel.trip.model.dto.SortCondition;
import com.maximusteam.tripfulaxel.trip.model.dto.TripCourseDTO;
import com.maximusteam.tripfulaxel.trip.model.dto.TripDTO;
import com.maximusteam.tripfulaxel.trip.model.dto.TripInquiryDTO;
import com.maximusteam.tripfulaxel.trip.model.dto.TripPaymentDTO;
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
		
		List<TripDTO> trip = tripService.selectTripList(parameter);
		List<TripCourseDTO> courseList = trip.get(0).getTripCourseList();
		Iterator<TripCourseDTO> courseIter = courseList.iterator();
		
		while(courseIter.hasNext()) {
			TripCourseDTO course = courseIter.next();
			if(course.getCourseCode() == 0) {
				courseIter.remove();
			}
		}
		
		for(TripDTO t : trip) {
			System.out.println(t);
		}
		
		if(condition.getTripType() != 3) {
			
			List<ReviewDTO> reviewList = tripService.selectReviewList(tripCode);
			
			for(ReviewDTO review : reviewList) {
				System.out.println(review);
			}
			
			model.addAttribute("reviewList", reviewList);
			
		}
		
		if(condition.getTripType() == 1) {
			
			GuideDTO guide = tripService.selectGuide(tripCode);
			System.out.println("가이드");
			System.out.println(guide);
			model.addAttribute("guide", guide);
		}
		
		model.addAttribute("trip", trip);
		
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
			for(ImageDTO image : trip.getTripImgList()) {
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
	
	@PostMapping("insert/inquiry")
	public void insertTripInquiry(@ModelAttribute TripInquiryDTO inquiry,  HttpServletResponse response) {
		
		
		int result = tripService.insertTripInquiry(inquiry);
		response.setCharacterEncoding("UTF-8");
		
		if(result > 0) {
			try {
				response.getWriter().print("여행 문의가 등록 되었습니다.");
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			System.out.println("여행 문의 등록 실패!");
		}
	}
	
	@GetMapping("payment")
	public String payment(@ModelAttribute TripPaymentDTO pay, Model model) {
		model.addAttribute("pay", pay);
		return "user/main/payment";
	}
}
