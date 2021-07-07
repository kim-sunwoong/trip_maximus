package com.maximusteam.tripfulaxel.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.maximusteam.tripfulaxel.user.model.dto.TripReviewDTO;
import com.maximusteam.tripfulaxel.user.model.service.GuidePageService;

/**
 * @author JJY
 *
 */
@Controller
@RequestMapping("user/guidepage/*")
public class GuidePageController {


	private final GuidePageService GuidePageService;
	
	@Autowired
	public GuidePageController(GuidePageService guideService) {
		this.GuidePageService = guideService;
	}
	
	@GetMapping(value = { "guideGoods", "/"})
	public String select(Model model) {
		
		return "user/guidepage/guideGoods";
	}
	@GetMapping("guideTab2")
	public String select2(Model model) {
		
		return "user/guidepage/guideTab2";
	}
	@GetMapping("guideParticipants")
	public String select3(Model model) {
		
		return "user/guidepage/guideParticipants";
	}
	@GetMapping("guideContact")
	public String select4(Model model) {
		
		return "user/guidepage/guideContact";
	}
	/**
	 * 후기관리 
	 * @param model
	 * @return
	 */
	@GetMapping("guideReview")
	public String selectGuideReview(@ModelAttribute TripReviewDTO tripreview ,Model model) {
		
		System.out.println("후기관리 ");
		
		List<TripReviewDTO> tripReviewdto = GuidePageService.selectGuideReview(tripreview);
		
		model.addAttribute("selectGuideReview" ,tripReviewdto );
		
		
		return "user/guidepage/guideReview";
	}
	@GetMapping("guideTax")
	public String select6(Model model) {
		
		
		return "user/guidepage/guideTax";
	}
	@GetMapping("guideGradeup")
	public String select7(Model model) {
		
		return "user/guidepage/guideGradeup";
	}
	
}
