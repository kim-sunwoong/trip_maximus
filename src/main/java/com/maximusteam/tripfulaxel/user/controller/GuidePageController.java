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

import com.maximusteam.tripfulaxel.user.model.dto.TripReviewDTO;
import com.maximusteam.tripfulaxel.user.model.dto.UserDTO;
import com.maximusteam.tripfulaxel.user.model.service.GuidePageService;

/**
 * @author JJY
 *
 */
@Controller
@RequestMapping("user/guidepage/*")
public class GuidePageController {

	private final GuidePageService guidePageService;
	
	@Autowired
	public GuidePageController(GuidePageService guidePageService) {
		this.guidePageService = guidePageService;
	}
	
	/**
	 * 내 여행상품 정보 
	 * @param model
	 * @return
	 */
	@GetMapping(value = { "guideGoods", "/"})
	public String selectMyGoods(@ModelAttribute TripReviewDTO tripreview, Model model,HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		int guideCode = ((UserDTO) session.getAttribute("loginUser")).getUserCode();
		System.out.println("로그인한 사람의 코드 :  " + guideCode);

		List<TripReviewDTO> myGoods = guidePageService.selectMyGoods(guideCode);
		System.out.println("내 여행상품 : " + myGoods);
		model.addAttribute("myGoods", myGoods);

		int goodsCount = guidePageService.selectCount(guideCode);
		System.out.println("내 총 리뷰수 : " + goodsCount);
		model.addAttribute("goodsCount", goodsCount);

		int reviewStar = guidePageService.selectStar(guideCode);
		System.out.println("내 평균별점 : " + reviewStar);
		model.addAttribute("reviewStar", reviewStar);

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
			
	
		HttpSession session = request.getSession();
		int guideCode = ((UserDTO) session.getAttribute("loginUser")).getUserCode();
		System.out.println("로그인한 사람의 코드 :  " + guideCode);

		List<TripReviewDTO> tripReviewdto = guidePageService.selectGuideReview(guideCode);
		System.out.println(" 리스트에 담긴 값  : " + tripReviewdto);

		model.addAttribute("selectGuideReview", tripReviewdto);

		return "user/guidepage/guideReview";
	}
	
	/**
	 * 후기 댓글
	 * @param tripreview
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "guideReviewReply", method = RequestMethod.POST)
	public String insertReply(@ModelAttribute TripReviewDTO tripreview) {

		System.out.println("가이드가 입력한 댓글   : " + tripreview.getReplyDetail());
		System.out.println("가이드의 여행코드 : " + tripreview.getReplycode());
		
		guidePageService.insertReply(tripreview);
	
		return "redirect:/";
	}
	
	
	
	
	@GetMapping("guideTax")
	public String select6(Model model) {
		
		
		return "user/guidepage/guideTax";
	}
	
}
