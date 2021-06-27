package com.maximusteam.tripfulaxel.admin.mainController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/*")
public class AdminMainController {

	@GetMapping("/")  // 이렇게 간다는 뜻은 *를 빼고 /admin/ 상태로 간다는 뜻이다.
	public String adminMain(){
		return "admin/mainPage";
	}
}
