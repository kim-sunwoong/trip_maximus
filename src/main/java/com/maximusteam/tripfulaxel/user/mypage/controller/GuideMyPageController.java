package com.maximusteam.tripfulaxel.user.mypage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.maximusteam.tripfulaxel.user.mypage.model.service.GuideMypageService;

@Controller
@RequestMapping("user/guidemypage/*")
public class GuideMyPageController {

	private final GuideMypageService guideMypageService;
	
	@Autowired
	public GuideMyPageController(GuideMypageService guideMypageService) {
		this.guideMypageService = guideMypageService;
	}
	
	@GetMapping(value = { "guideTab1", "/"})
	public String select(Model model) {
		
		return "user/guidemypage/guideTab1";
	}
	@GetMapping("guideTab2")
	public String select2(Model model) {
		
		return "user/guidemypage/guideTab2";
	}
	@GetMapping("guideTab3")
	public String select3(Model model) {
		
		return "user/guidemypage/guideTab3";
	}
	@GetMapping("guideTab4")
	public String select4(Model model) {
		
		return "user/guidemypage/guideTab4";
	}
	@GetMapping("guideTab5")
	public String select5(Model model) {
		
		return "user/guidemypage/guideTab5";
	}
	@GetMapping("guideTab6")
	public String select6(Model model) {
		
		return "user/guidemypage/guideTab6";
	}
	@GetMapping("guideTab7")
	public String select7(Model model) {
		
		return "user/guidemypage/guideTab7";
	}
	
}
