package com.maximusteam.tripfulaxel.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.maximusteam.tripfulaxel.admin.model.dto.AdminDTO;
import com.maximusteam.tripfulaxel.admin.model.service.AdminService;

@Controller
@RequestMapping("/admin/*")
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
	
	@GetMapping("workerList") // 얘는 화면에서 우리가 여기로 오라고 주소를 정해주는 것이고
	public String selectWorkerList(Model model) {
		
		System.out.println("여기는 된단 소린데..");
		List<AdminDTO> adminList = adminService.selectAdminList();
		model.addAttribute("selectAdmin", adminList);
		System.out.println("여기가 안된다 소리..");
			
		return "admin/workerList"; // 리턴값의 주소는 받아온 값을 가지고 다시 이 화면으로 가라는 것이다.
	}
	
	@GetMapping("memberList") 
	public String selectMemberList(Model model) {
		
		model.addAttribute("selectMember", adminService.selectMemberList());
			
		return "admin/memberManagement"; 
	}
	
	@GetMapping("reportList") 
	public String selectReportList(Model model) {
		
		model.addAttribute("selectReport", adminService.selectReportList());
			
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
}
