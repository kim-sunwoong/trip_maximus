package com.maximusteam.tripfulaxel.livechat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/share/*")
public class LiveChatController {

	
	@RequestMapping("livechat")
	public String liveChat() {
		return "user/livechat/liveChat";
	}
}
