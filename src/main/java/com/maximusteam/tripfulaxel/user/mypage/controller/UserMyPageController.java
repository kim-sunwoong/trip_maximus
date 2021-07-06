package com.maximusteam.tripfulaxel.user.mypage.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.maximusteam.tripfulaxel.user.mypage.model.dto.GuideTripApplyDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.JoinTripListDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.ReqListDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.TestDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.service.UserMypageService;

@Controller
@RequestMapping("/user/mypage/*")
public class UserMyPageController {

	private final UserMypageService userMypageService;
	
	@Autowired
	public UserMyPageController(UserMypageService userMypageService) {
		this.userMypageService = userMypageService;
	}
	
	@GetMapping(value = { "mypageTab1", "/"})
	public String selectJoinList(Model model) {
		List<JoinTripListDTO> joinList = userMypageService.selectJoinList();
		List<JoinTripListDTO> joinList2 = userMypageService.selectJoinList2();
		for(int i = 0; i<joinList.size();i++) {
			joinList.get(i).setCountUser(joinList2.get(i).getCountUser());
//			if(joinList.get(i).getStatus().getTripCancelYN().equals("Y") && Date (joinList.get(i).getStatus().getTripEndDate()) > today) {
//				joinList.get(i).getStatus().setStatus("참여대기중");
//			}
		}
		
		model.addAttribute("joinList",joinList);
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
		List<JoinTripListDTO> myjoinList = userMypageService.selectMyJoinList();
		List<JoinTripListDTO> myjoinList2 = userMypageService.selectMyJoinList2();
		for(int i = 0; i<myjoinList.size();i++) {
			myjoinList.get(i).setCountUser(myjoinList2.get(i).getCountUser());
		}
		model.addAttribute("myjoinList",myjoinList);
		
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
		
		List<ReqListDTO> reqList = userMypageService.selectRequestList();
		for(int i = 0; i<reqList.size();i++) {
			if(reqList.get(i).getReqYN().equals("N")){
				reqList.get(i).setReqYN("처리중");
			} else {
				reqList.get(i).setReqYN("처리완료");
			}
		}
		System.out.println(reqList);
		model.addAttribute("reqList",reqList);
		
		return "user/mypage/mypageTab6";
	}
	@GetMapping("mypageTab7")
	public String insertRequest(Model model,HttpSession session) {
		
		session.getAttribute("loginUser");
		
		
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
