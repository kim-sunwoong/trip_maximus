package com.maximusteam.tripfulaxel.user.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
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
@SessionAttributes("loginUser")
public class UserContrlloer {

	private final UserService userService;
	private final BCryptPasswordEncoder passwordEncoder;
	private final ApplicationContext context;


	@Autowired
	public UserContrlloer(UserService userService, BCryptPasswordEncoder passwordEncoder, ApplicationContext context) {
		this.userService = userService;
		this.passwordEncoder = passwordEncoder;
		this.context = context;
	}

	/**
	 * 회원가입용 메소드
	 * 
	 * @param user
	 * @param request
	 * @return
	 */

	@RequestMapping(value = "regist", method = RequestMethod.POST)
	public String registUser(@ModelAttribute UserDTO user, RedirectAttributes rttr) throws Exception {

		user.setUserPwd(passwordEncoder.encode(user.getUserPwd()));

		if (userService.registUser(user) == false) {

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
	 * 
	 * @param user
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value = "/duplicateCheck", method = RequestMethod.POST)
	@ResponseBody
	public void duplicationCheckForAjax(@ModelAttribute UserDTO user, HttpServletResponse response) throws Exception {

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
					rttr.addFlashAttribute("failLogin", "신고횟수 3회 이상으로 차단당하셨습니다. 고객센터에 문의해주세요.");
					return "redirect:/";

				}

			} else {

				// 비밀번호 매칭 실패
				System.out.println("비밀번호 매칭 실패 ");
				rttr.addFlashAttribute("failLogin", "비밀번호가 틀립니다. 다시 한번 확인해주세요.");
				return "redirect:/";
			}
		} else {

			// 2-3. 조회결과 사용자가 정보가 없을 경우
			// 해당하는 이메일이 없음.
			System.out.println("해당하는 이메일이 없습니다. ");
			rttr.addFlashAttribute("failLogin", "해당하는 이메일이 없습니다.");
			return "redirect:/";

		}

	}

	/**
	 * 로그아웃용 메소드
	 * 
	 * @param status
	 * @return
	 */
	@GetMapping("/logout")
	public String logout(SessionStatus status) {

		status.setComplete();

		return "redirect:/";
	}

	/**
	 * 이메일 찾기
	 * 
	 * @param user
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "findEmail", method = RequestMethod.POST, produces = "application/json")
	@ResponseBody
	public void findEmail(@ModelAttribute UserDTO user, HttpServletResponse response) throws IOException {

		System.out.println(user);
		System.out.println("사용자가 입력한 이름 : " + user.getUserName());
		System.out.println("사용자가 입력한 전화번호 : " + user.getUserPhone());
		System.out.println("사용자가 입력한 생년월일  : " + user.getUserBday());

		PrintWriter out = response.getWriter();
		UserDTO userdto = userService.findEmail(user);

		System.out.println("값을 가지고 왔는지 체크  " + userdto);

		JSONObject resMap = new JSONObject();
		if (userdto != null) {
			resMap.put("res", "success");
			resMap.put("email", userService.findEmail(user).getUserEmail());
		} else {
			System.out.println("이메일 찾기 실패 !! ");
			resMap.put("res", "fail");

		}

		out.print(resMap);

	}


	/**
     * 비밀번호 찾기 메소드 
     * @param user
     * @param response
     * @throws Exception
     */
    @RequestMapping(value = "searchPwd", method = RequestMethod.POST)
    @ResponseBody
    public void findPwd(@ModelAttribute UserDTO user, 
    		HttpServletResponse response) throws Exception{
    	
    	
    	System.out.println("사용자가 입력한 이름 : " + user.getUserName());
		System.out.println("사용자가 입력한 이메일 : " + user.getUserEmail());
		System.out.println("사용자가 입력한 생년월일  : " + user.getUserBday());
		
    	//1. 입력한 이름,이메일, 전화번호가 DB에 잇는 데이터와 일치하는지 확인한다
		PrintWriter out = response.getWriter();
		UserDTO userPwd = userService.searchPwd(user);

		System.out.println("값을 가지고 왔는지 체크  " + userPwd);
		
		if(userPwd != null) {
			
			// 1-1. 일치하면 이메일을 보낸다. 
			JavaMailSenderImpl mailSender = (JavaMailSenderImpl)context.getBean("mailSender");
			
		
			/* 2. 새롭게 쓸 PW 난수를 생성한다  */
			char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', 
					                      '8', '9', 'A', 'B', 'C', 'D', 'E',
					                      'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
                                          'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y',
					                      'Z' };
			
			StringBuffer sb = new StringBuffer();
			System.out.println("charSet.length : " + charSet.length);
			
			int idx = 0;
			for(int i = 0; i < 10; i++) {
				idx = (int) (charSet.length * Math.random()); 
				// 36 * 생성된 난수를 int로 추출 (소숫점 제거) 
				System.out.println("idx : "+ idx);
				sb.append(charSet[idx]);
			}
			
			 String newPwd = sb.toString();
			 
			
			// 새로운 비밀번호 잘 되는지 확인 
			System.out.println("newPwd ::: " + newPwd);
			
			
			// 난수를  암호화해서 UserDTO에 담는다. 
			userPwd.setUserPwd(passwordEncoder.encode(newPwd));
			
			 /*  3. 디비에 업데이트 하고 메일 내용(content)에 설정한다. */
			if(userService.updateUser(userPwd)) {
				
				System.out.println("비밀번호 업데이트 성공 ");
			} else {
				System.out.println("비밀번호 업데이트 실패");
			}
		
			
			// 메일 제목, 내용
			String subject = "[트리풀악셀] 요청하신 회원정보 찾기 안내 메일입니다 ";
			String content = " <div id=\"readFrame\">\r\n" + 
					         " <div style=\"margin:30px auto;width:600px;border:10px solid #f7f7f7\">\r\n" + 
					         " <div style=\"border:1px solid #dedede\">\r\n" + 
					         " <h1 style=\"padding:30px 30px 0;background:#f7f7f7;color:#555;font-size:1.4em\">회원정보 찾기 안내</h1>\r\n" + 
					         " <p style=\"margin:20px 0 0;padding:30px 30px 30px;border-bottom:1px solid #eee;line-height:1.7em\">" + user.getUserName()  + "회원님은\r\n" + 
				             " 회원정보 찾기 요청을 하셨습니다.<br>저희는 임시\r\n" + 
					         " 비밀번호를 생성하여 안내 해드리고 있습니다.<br>아래에서 변경될 비밀번호를 확인하신 후,\r\n" + 
					         "<span style=\"color:#ff3061\">\r\n" + 
				             " <br> 홈페이지에서 이메일(ID)과 변경된 비밀번호를 입력하시고 로그인 하십시오.<br>로그인 후에는 마이페이지에서 새로운 비밀번호로\r\n" + 
					         "  변경해 주십시오.</p>\r\n" + 
					         " <p style=\"margin:0;padding:30px 30px 30px;border-bottom:1px solid #eee;line-height:1.7em\">\r\n" + 
					         " <span style=\"display:inline-block;width:100px\">변경될 비밀번호</span>\r\n" + 
				             " <strong style=\"color:#ff3061\"> "+ newPwd +"</strong>\r\n" + 
					         "  </p>\r\n" + 
					         "  </div>\r\n" + 
					         " </div>\r\n" + 
					         "</div>";
			
			// 보내는 사람
			String from = mailSender.getUsername();
			
			// 받는 사람
			String[] to = new String[1];
			to[0] = user.getUserEmail();
			
			
			try {
				
				// 메일 내용 넣을 객체와, 이를 도와주는 Helper 객체 생성
				MimeMessage mail = mailSender.createMimeMessage();
				MimeMessageHelper mailHelper = new MimeMessageHelper(mail, true,"UTF-8");
				
				
				// 메일 내용을 채워줌
				mailHelper.setFrom(from);	// 보내는 사람 셋팅
				mailHelper.setTo(to);		// 받는 사람 셋팅
				mailHelper.setSubject(subject);	// 제목 셋팅
				mail.setContent(content, "text/html;charset=utf-8"); 
				/*
				 * mailHelper.setText(content); // 내용 셋팅
				 */				
				
				// 메일 전송
				mailSender.send(mail);
				
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			System.out.println("이메일 보내기 성공");
			out.print("success");
			
		} else {
			//일치하지 않으면
			System.out.println("이메일보내기 실패 ");
			out.print("fail");
		}
			
			
    	
    }
    



}
