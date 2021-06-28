package com.maximusteam.tripfulaxel.user.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/mypage/*")
public class UserMyPageController {

	
	@GetMapping("mypageTab1")
	public String selectJoinList(Model model) {
		
		
		
		return "user/mypage/mypageTab1";
	}
	
	@GetMapping("mypageTab2")
	public String selectGuideTripList(Model model) {
		
		
		
		return "user/mypage/mypageTab2";
	}
	
	@GetMapping("mypageTab3")
	public String selectMyTripReviewList(Model model) {
		
		
		
		return "user/mypage/mypageTab3";
	}
	@GetMapping("mypageTab4")
	public String selectMyjoinTrip(Model model) {
		
		
		
		return "user/mypage/mypageTab4";
	}
	@GetMapping("mypageTab5")
	public String modifyUserAccount(Model model) {
		
		
		
		return "user/mypage/mypageTab5";
	}
	@GetMapping("mypageTab6")
	public String selectRequestList(Model model) {
		
		
		
		return "user/mypage/mypageTab6";
	}
	@GetMapping("mypageTab7")
	public String insertRequest(Model model) {
		
		
		
		return "user/mypage/mypageTab7";
	}
	
	
	
}
