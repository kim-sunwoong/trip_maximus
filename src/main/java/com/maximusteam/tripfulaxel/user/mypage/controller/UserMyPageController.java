package com.maximusteam.tripfulaxel.user.mypage.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.maximusteam.tripfulaxel.user.mypage.model.dto.GuideTripApplyDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.JoinTripListDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.TestDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.service.UserMypageService;
import com.maximusteam.tripfulaxel.user.mypage.model.service.UserMypageServiceImpl;

@Controller
@RequestMapping("/user/mypage/*")
public class UserMyPageController {

	private final UserMypageService userMypageService;
	
	@Autowired
	public UserMyPageController(UserMypageServiceImpl userMypageService) {
		this.userMypageService = userMypageService;
	}
	
	@GetMapping(value = { "mypageTab1", "/"})
	public String selectJoinList(Model model) {
		
		List<JoinTripListDTO> joinList = userMypageService.selectJoinList();
		List<JoinTripListDTO> joinList2 = userMypageService.selectJoinList2();
//		List<Object> join = new ArrayList<Object>();
		for(int i = 0; i<joinList.size();i++) {
			joinList.get(i).setCountUser(joinList2.get(i).getCountUser());
		}
//		현재 할려고하는것은 joinList[i].setJoinTripDate 하려고; 리스트는 get으로 꺼낸단다~~^^;;
//		그 이유는 쿼리문에서 한번에 처리가 안되기 때문에 ,  TODO 쿼리문부터 질문할것
		System.out.println(joinList);
		System.out.println(joinList2);
//		join.add(joinList);
//		join.add(joinList2);
//		model.addAttribute("join",join);
		model.addAttribute("joinList",joinList);
//		model.addAttribute("joinList2",joinList2);
		return "user/mypage/mypageTab1";
	}
	

	@GetMapping("mypageTab2")
	public String selectGuideTripList(Model model) {
		
		List<GuideTripApplyDTO> gApplyList = userMypageService.selectguideTripList();
		
		System.out.println(gApplyList);
		model.addAttribute("gApplyList",gApplyList);
		
		return "user/mypage/mypageTab2";
	}
	
	@GetMapping("mypageTab3")
	public String selectMyTripReviewList(Model model) {
		
		List<JoinTripListDTO> joinList = userMypageService.selectMyJoinList();
		List<JoinTripListDTO> joinList2 = userMypageService.selectMyJoinList2();
		for(int i = 0; i<joinList.size();i++) {
			joinList.get(i).setCountUser(joinList2.get(i).getCountUser());
		}
		System.out.println(joinList);
		System.out.println(joinList2);
		model.addAttribute("myjoinList",joinList);
		
		return "user/mypage/mypageTab3";
	}
	@GetMapping("mypageTab4")
	public String selectMyjoinTrip(Model model) {
		
		List<GuideTripApplyDTO> myTreview = userMypageService.selectMyTripReviewList();
		
		System.out.println(myTreview);
		model.addAttribute("myTreview",myTreview);
		
		
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
	
	@GetMapping("test2")
	public String test(Model model) {
		
		List<TestDTO> test = userMypageService.test();
		System.out.println(test);
		model.addAttribute("test",test);
		
		return "user/mypage/test2";
	}
	
	
	
	
}
