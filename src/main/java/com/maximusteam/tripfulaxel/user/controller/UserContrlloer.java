package com.maximusteam.tripfulaxel.user.controller;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.maximusteam.tripfulaxel.user.model.dto.UserDTO;
import com.maximusteam.tripfulaxel.user.model.service.UserService;

import net.sf.json.JSONObject;

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
	 * 
	 * @param user
	 * @param request
	 * @return
	 */

	@PostMapping("/regist")
	public String registUser(@ModelAttribute UserDTO user, RedirectAttributes rttr) throws Exception {
		user.setUserPwd(passwordEncoder.encode(user.getUserPwd()));
		userService.registUser(user);
		System.out.println("회원가입 성공");
		rttr.addFlashAttribute("messege", "registOK");
		return "redirect:/";
	}

    @RequestMapping(value = "/duplicateCheck", method = RequestMethod.POST)
    @ResponseBody
    public void duplicationCheckForAjax(@ModelAttribute UserDTO user, 
      HttpServletRequest request, HttpServletResponse response) throws Exception {
        PrintWriter out = response.getWriter();
        JSONObject resMap = new JSONObject();
        
    	int result = userService.duplicationCheck(user);
		System.out.println("result :" + result);
		String str = "";

		if (result > 0) {
			str = "fail";
		} else {
			str = "success";
		}
        
        out.print(str);
    }

	/**
	 * 로그인용 메소드
	 * 
	 * @param user
	 * @param model
	 * @return
	 */
	@PostMapping("/login")
	public String loginUser(@ModelAttribute UserDTO user, Model model) {

		System.out.println(user.getUserEmail());
		System.out.println(user.getUserPwd());

		if (!passwordEncoder.matches(user.getUserPwd(), userService.loginUser(user).getUserPwd())) {
			System.out.println("비밀번호 매치 실패 !");

		}

		model.addAttribute("loginUser", userService.loginUser(user));

		return "redirect:/";
	}

}
