package com.maximusteam.tripfulaxel.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.maximusteam.tripfulaxel.admin.model.dto.AdminAnswerDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.AdminDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.GuideDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.LevelUpDTO;
import com.maximusteam.tripfulaxel.admin.model.dto.ReportDTO;
import com.maximusteam.tripfulaxel.admin.model.service.AdminService;

@Controller
@RequestMapping("/admin/*")
@SessionAttributes("loginAdmin")
public class AdminController {

	private final AdminService adminService;

	@Autowired
	public AdminController(AdminService adminService) {
		this.adminService = adminService;
	}

	@GetMapping("notice")
	public String selectNotice(Model model) {
		return "admin/noticeManagement";
	}

	@GetMapping("noticeDetail")
	public String selectNoticeDetail(Model model) {
		return "admin/noticeDetail";
	}

	@GetMapping("noticeWrite")
	public String selectNoticeWrite(Model model) {
		return "admin/noticeWrite";
	}

	@GetMapping("workerList") // 얘는 화면에서 우리가 여기로 오라고 주소를 정해주는 것이고
	public String selectWorkerList(Model model) {

		System.out.println("여기는 된단 소린데..");
		List<AdminDTO> adminList = adminService.selectAdminList();
		model.addAttribute("selectAdmin", adminList);

		return "admin/workerList"; // 리턴값의 주소는 받아온 값을 가지고 다시 이 화면으로 가라는 것이다.
	}

	@GetMapping("memberList")
	public String selectMemberList(Model model) {

		model.addAttribute("selectMember", adminService.selectMemberList());

		return "admin/memberManagement";
	}

	@GetMapping("reportList")
	public String selectMemberBycategory(@RequestParam(value = "ut", defaultValue = "all") String type, Model model) {
		ReportDTO rd = new ReportDTO();
		rd.setUserType(type);
		model.addAttribute("selectReport", adminService.selectReportList(rd));
		return "admin/reportManagement";
	}

	@GetMapping("guideList")
	public String selectGuideList(Model model) {
		model.addAttribute("selectGuide", adminService.selectGuideList());
		return "admin/guideEnroll";
	}

	@GetMapping("calculateList")
	public String selectCalculateList(Model model) {

		model.addAttribute("selectCalculate", adminService.selectCalculateList());
		return "admin/guideCalculate";
	}

	@GetMapping("taxList")
	public String selectTaxList(Model model) {

		model.addAttribute("selectTax", adminService.selectTaxList());
		return "admin/tax";
	}

	@GetMapping("memberDetail")
	public String selectMemberDetail(@RequestParam("memberNo") int no, Model model) {

		model.addAttribute("selectMemberDetail", adminService.selectMemberDetail(no));
		return "admin/memberManagementDetail";
	}

	@GetMapping("deleteMember")
	public String deleteMember(@RequestParam("memberNo") int no, Model model) {

		model.addAttribute("deleteMember", adminService.deleteMember(no));
		return "redirect:memberList";
	}

	@GetMapping("deleteAdmin")
	public String deleteAdmin(@RequestParam("adminNo") int no, Model model) {

		model.addAttribute("deleteAdmin", adminService.deleteAdmin(no));
		return "redirect:workerList";
	}

	@GetMapping("reportDetail")
	public String selectReportDetail(@RequestParam("reportNo") int no, Model model) {

		model.addAttribute("selectReportDetail", adminService.selectReportDetail(no));
		return "admin/reportManagementDetail";
	}

	@PostMapping("insertReport")
	public String insertReport(@ModelAttribute ReportDTO report, Model model) {

		int insertReport = adminService.insertReport(report);
		model.addAttribute("insertReport", insertReport);
		return "redirect:reportList";
	}

	@GetMapping("enrollDetail")
	public String selectEnrollDetail(@RequestParam("guideNo") int no, Model model) {
		model.addAttribute("selectEnrollDetail", adminService.selectEnrollDetail(no));
		model.addAttribute("selectProfilePic", adminService.selectProfilePic(no));
		model.addAttribute("selectIdPic", adminService.selectIdPic(no));
		return "admin/guideEnrollDetail";
	}

	@GetMapping("answerList")
	public String selectMemberCategory(@RequestParam(value = "nt", defaultValue = "all") String type, Model model) {
		AdminAnswerDTO no = new AdminAnswerDTO();
		no.setAnswerType(type);
		model.addAttribute("selectAnswer", adminService.selectMemberCategory(no));
		return "admin/answerManagement";
	}

	 @GetMapping("answerDetail") 
	 public String selectAnswerDetail(@RequestParam("answerNo") int no, Model model) {
	  model.addAttribute("selectAnswerDetail", adminService.selectAnswerDetail(no)); 
	  return "admin/answerManagementDetail";
	 }
	 
	@PostMapping("insertAnswer")
	public String insertAnswer(@ModelAttribute AdminAnswerDTO answer, Model model) {

			int insertAnswer = adminService.insertAnswer(answer);
			model.addAttribute("insertAnswer", insertAnswer);
			return "redirect:answerList";
	}
	
	@GetMapping("levelUpList")
	public String selectLevelUpList(Model model) {
		model.addAttribute("selectLevelUpList", adminService.selectLevelUpList());
		return "admin/guideLevelUp";
	}
	
	@GetMapping("levelUpDetail")
	public String selectLevelUpDetail(@RequestParam("guideNo") int no, Model model) {
		model.addAttribute("selectLevelUpDetail", adminService.selectLevelUpDetail(no));
		return "admin/guideLevelUpDetail";
	}
	
	@PostMapping("insertLevelUp")
	public String insertLevelUp(@ModelAttribute LevelUpDTO levelUp , Model model) {

		int insertLevelUp = adminService.insertLevelUp(levelUp);
		model.addAttribute("insertLevelUp", insertLevelUp);
		return "redirect:levelUpList";
	}
	
	@PostMapping("insertGuideEnroll")
	public String insertGuideEnroll(@ModelAttribute GuideDTO guide , Model model) {

		int insertGuideEnroll = adminService.insertGuideEnroll(guide);
		model.addAttribute("insertGuideEnroll", insertGuideEnroll);
		return "redirect:guideList";
	}
	
	@GetMapping("adminEnroll")
	public String adminEnroll(Model model) {
		return "admin/workerEnroll";
	}

	@PostMapping("insertWorkerEnroll")
	public String insertWorkerEnroll(@ModelAttribute AdminDTO admin , Model model) {

		int insertWorkerEnroll = adminService.insertWorkerEnroll(admin);
		model.addAttribute("insertWorkerEnroll", insertWorkerEnroll);
		return "redirect:workerList";
	}
	
	@GetMapping("guideInforamtionList")
	public String selectGuideInforamtionList(Model model) {

		model.addAttribute("selectGuideInforamtionList", adminService.selectGuideInforamtionList());

		return "admin/guideInfromationFix";
	}
	
	@GetMapping("guideInformationDetail")
	public String selectGuideInformationDetail(@RequestParam("guideNo") int no, Model model) {
		model.addAttribute("selectGuideInformationDetail", adminService.selectGuideInformationDetail(no));
		model.addAttribute("selectProfilePic", adminService.selectProfilePic(no));
		model.addAttribute("selectIdPic", adminService.selectIdPic(no));
		return "admin/guideInformationFixDetail";
	}
	
	@PostMapping("insertGuideInformationFix")
	public String insertGuideInformationFix(@ModelAttribute GuideDTO guide , Model model) {

		int insertGuideInformationFix = adminService.insertGuideInformationFix(guide);
		model.addAttribute("insertGuideInformationFix", insertGuideInformationFix);
		return "redirect:guideInforamtionList";
	}
	
	/**
	 * 로그인용 메소드
	 * @param admin
	 * @return
	 */
	@PostMapping("login")
	public String selectLogin(@ModelAttribute AdminDTO admin,HttpServletRequest request ,Model model) {
		
		System.out.println("관리자가 입력한 이메일 " + admin.getAdminEmail());
		System.out.println("관리자가 입력한 비밀번호 " + admin.getAdminPwd());
		
		AdminDTO admindto = adminService.selectLogin(admin);
		System.out.println("입력한 정보 : " + admindto);
		
		if(admindto != null ) {
			
			System.out.println(" 관리자 로그인 성공 ");
			HttpSession session = request.getSession();
			session.setAttribute("LoginAdmin", adminService.selectLogin(admin));
			
			return "admin/mainPage";
		} else {
			
			System.out.println("관리자 로그인 실패 ");
			
			return "admin/login";
		}
		
	}
	
	@GetMapping("loginpage")
	public String loginpage() {
		return "admin/login";
	}
}
