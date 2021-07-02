package com.maximusteam.tripfulaxel.livechat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.MessageChannel;
import org.springframework.messaging.converter.SimpleMessageConverter;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

import com.maximusteam.tripfulaxel.livechat.model.dto.ChatMessageDTO;
import com.maximusteam.tripfulaxel.livechat.model.dto.Message;

@Controller
public class MessageMappingTest {

	@Autowired
	SimpMessagingTemplate template;
	
	public MessageMappingTest(SimpMessagingTemplate template) {
		this.template = template;
	}

	@MessageMapping("/message")
	public void chat(ChatMessageDTO message) {
		
		System.out.println(message);
		
		this.template.convertAndSend("/topic/group/" + message.getRoomCode(), message);
	}
	
	
}
