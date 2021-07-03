package com.maximusteam.tripfulaxel.user.mypage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.maximusteam.tripfulaxel.user.mypage.model.dto.JoinTripListDTO;
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
//		for(int i = 0; i<joinList.size();i++) {
//			System.out.println(joinList.get(i).set);
//		}
//		현재 할려고하는것은 joinList[i].setJoinTripDate 하려고; 리스트는 get으로 꺼낸단다~~^^;;
//		그 이유는 쿼리문에서 한번에 처리가 안되기 때문에 ,  TODO 쿼리문부터 질문할것
		System.out.println(joinList);
		model.addAttribute("selectJoin",joinList);
		
		return "user/mypage/mypageTab1";
	}
	

	@GetMapping("mypageTab2")
	public String selectGuideTripList(Model model) {
		
//		List<E>
		
		
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
