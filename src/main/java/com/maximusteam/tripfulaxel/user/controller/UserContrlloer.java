package com.maximusteam.tripfulaxel.user.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.maximusteam.tripfulaxel.user.model.dto.UserDTO;
import com.maximusteam.tripfulaxel.user.model.service.UserService;



/*
 * @author JJY
 *
 */
@Controller
@RequestMapping("/user/*")
@SessionAttributes("loginUser")
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
		
		if(userService.registUser(user) == false) {
			
			System.out.println("회원가입 실패");
			rttr.addFlashAttribute("messege", "registNO");
		} else {
			System.out.println("회원가입 성공");
			rttr.addFlashAttribute("messege", "registOK");
		}
		
		return "redirect:/";
	}

    /**
     * 이메일 중복체크용
     * @param user
     * @param request
     * @param response
     * @throws Exception
     */
    @RequestMapping(value = "/duplicateCheck", method = RequestMethod.POST)
    @ResponseBody
    public void duplicationCheckForAjax(@ModelAttribute UserDTO user, 
      HttpServletResponse response) throws Exception {
    	
        PrintWriter out = response.getWriter();
        
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
    @RequestMapping(value = "login", method = RequestMethod.POST)
	public String loginUser(@ModelAttribute UserDTO user, HttpServletRequest request, RedirectAttributes rttr) {

		System.out.println("회원이 입력한 이메일 " + user.getUserEmail());
		System.out.println("회원이 입력한 비밀번호 " + user.getUserPwd());

		

		// 1. 사용자가 입력한 이메일 주소를 가지고 사용자가 있는지 조회한다.
		UserDTO userDTO = userService.loginUser(user);
		System.out.println("입력한 정보 " + userDTO);
		
		
		// 2-1. 조회결과 사용자 정보가 있는 경우
		if (userDTO != null) { 
	
			
			// 2-1-1. 사용자가 입력한 비밀번호와 DB에서 조회한 비밀번호를 비교한다.
			if (passwordEncoder.matches(user.getUserPwd(), userService.loginUser(user).getUserPwd())) {
				
				
				// 2-1-2. 조회된 결과에서 신고누적 횟수를 체크한다. 
				if (userDTO.getUserReportCount() < 3) {
					
					HttpSession session = request.getSession();
					session.setAttribute("loginUser", userService.loginUser(user));

					return "redirect:/";

				} else {
					
					// 신고 3회 이상 차단 
					System.out.println("신고 횟수 누적 3회 이상 ");
					rttr.addFlashAttribute("login", "차단당하셨습니다.");
					return "redirect:/";

				}

			} else {
				
				// 비밀번호 매칭 실패 
				System.out.println("비밀번호 매칭 실패 ");
				rttr.addFlashAttribute("login", "비밀번호가 틀립니다.");
				return "redirect:/";
			}
		} else {
			
			// 2-3. 조회결과 사용자가 정보가 없을 경우
			// 해당하는 이메일이 없음.
			System.out.println("해당하는 이메일이 없습니다. ");
			rttr.addFlashAttribute("login", "해당하는 이메일이 없습니다.");
			return "redirect:/";

		}
		

	}

}
