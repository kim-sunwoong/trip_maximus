package com.maximusteam.tripfulaxel.livechat.controller;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.maximusteam.tripfulaxel.livechat.model.dto.ChatMessageDTO;

@Controller
@RequestMapping("/share/*")
public class ChatController {

	
	@MessageMapping("/chat")
	public ChatMessageDTO sendMessage(ChatMessageDTO chatMessage) {
		
		return new ChatMessageDTO(0, null, null, 0);
	}
	
	@RequestMapping("chat")
	public String chatLocation() {
		return "user/livechat/chat";
	}
	
}
