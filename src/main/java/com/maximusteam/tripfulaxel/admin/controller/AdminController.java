package com.maximusteam.tripfulaxel.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.maximusteam.tripfulaxel.admin.model.dto.AdminDTO;
import com.maximusteam.tripfulaxel.admin.model.service.AdminService;

@Controller
public class AdminController {

	private final AdminService adminService;
	
	@Autowired 
	public AdminController(AdminService adminService) {
		this.adminService = adminService;
	}
	
	@GetMapping("admin")
	public String login(){
		return "admin/mainPage";
	}
	
	@GetMapping("") // 얘는 화면에서 우리가 여기로 오라고 주소를 정해주는 것이고
	public String selectWorkerList(@ModelAttribute AdminDTO admin, Model model) {
			
		model.addAttribute("selectAdmin", adminService.selectAdmin(admin));
				
		return ""; // 리턴값의 주소는 받아온 값을 가지고 다시 이 화면으로 가라는 것이다.
	}
}
