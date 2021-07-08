package com.maximusteam.tripfulaxel.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String selectGuideReview(@ModelAttribute TripReviewDTO tripreview ,Model model, HttpServletRequest request) {
		
		
		  // 로그인한 세선에 담긴 사람것만 가져와야함 ? 쿼리에서 어떻게 처리해야하지 ?
			/*
			 * HttpSession session = request.getSession(); int guideCode =
			 * (Integer)session.getAttribute("userCode"); System.out.println("로그인한 사람의 코드 :"
			 * + guideCode);
			 */
		 
		
		List<TripReviewDTO> tripReviewdto = GuidePageService.selectGuideReview(tripreview);
		System.out.println(" 리스트에 담긴 값  : " + tripReviewdto);
		
		model.addAttribute("selectGuideReview" ,tripReviewdto );
		
		return "user/guidepage/guideReview";
	}
	
	@RequestMapping(value = "guideReply", method = RequestMethod.POST)
	public String insertReply(@ModelAttribute TripReviewDTO tripreview, Model model) {
		
		System.out.println("가이드의 댓글  : " + tripreview.getReplyDetail());
		
		boolean insertGuideReply = GuidePageService.insertReply(tripreview);
		model.addAttribute("insertGuideReply", insertGuideReply);
		
		return "redirect:/";
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
