package com.maximusteam.tripfulaxel.user.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


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
	
	@Autowired
	public UserContrlloer(UserService userService) {
		this.userService = userService;
	}
	
	/**
	 * 회원가입용 메소드 
	 * @param user
	 * @param request
	 * @return
	 */
	@PostMapping("/regist")
	public String registUser(@ModelAttribute UserDTO user, Model model) {
		
		System.out.println(user);
		
		userService.registUser(user);
		
		
		return "main";
			
	}
	
	/**
	 * 로그인용 메소드
	 * @param user
	 * @param model
	 * @return
	 */
	@PostMapping("/login")
	public String loginUser(@ModelAttribute UserDTO user)  {
			
		System.out.println(user.getUserEmail());
		System.out.println(user.getUserPwd());
		
		userService.loginUser(user);
				
		return "main";
	}
	

}
