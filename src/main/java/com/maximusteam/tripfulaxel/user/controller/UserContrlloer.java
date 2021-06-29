package com.maximusteam.tripfulaxel.user.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.maximusteam.tripfulaxel.user.model.dto.UserDTO;
import com.maximusteam.tripfulaxel.user.model.service.UserService;

/*
 * @author JJY
 *
 */
@Controller
@RequestMapping("/user/*")
public class UserContrlloer {

	private final UserService userService;
	private final BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	public UserContrlloer(UserService userService, BCryptPasswordEncoder passwordEncoder) {
		this.userService = userService;
		this.passwordEncoder = passwordEncoder;
	}
	
	/**
	 * 회원가입용 메소드 
	 * @param user
	 * @param request
	 * @return
	 */
	
	@PostMapping("/regist")
	// redirect할 때 세션에 한번 담기고 사라짐 , 숨겨져서 감 
	public String registUser(@ModelAttribute UserDTO user, RedirectAttributes rttr) throws Exception {
		
		System.out.println("controller : " + user);
		
		user.setUserPwd(passwordEncoder.encode(user.getUserPwd()));
		
		if(userService.registUser(user) == false) {
		    
			System.out.println("회원가입 실패");
			rttr.addFlashAttribute("messege" , "registNO");
			
		} else {
			
			System.out.println("회원가입 성공");
			rttr.addFlashAttribute("messege" , "registOK");
		}
		
		
		
		return "redirect:/";
			
	}
	
	/**
	 * 로그인용 메소드
	 * @param user
	 * @param model
	 * @return
	 */
	@PostMapping("/login")
	public String loginUser(@ModelAttribute UserDTO user, Model model)  {
			
		System.out.println(user.getUserEmail());
		System.out.println(user.getUserPwd());

		if(!passwordEncoder.matches(user.getUserPwd(), userService.loginUser(user).getUserPwd())) {
			 System.out.println("비밀번호 매치 실패 !");
			 
		}
		
		model.addAttribute("loginUser", userService.loginUser(user));
		
	
				
		return "redirect:/";
	}
	

}
