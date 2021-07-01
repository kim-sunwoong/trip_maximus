package com.maximusteam.tripfulaxel.livechat.controller;

import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.maximusteam.tripfulaxel.livechat.model.dto.ChatMessageDTO;
import com.maximusteam.tripfulaxel.livechat.model.dto.ChatRoomDTO;
import com.maximusteam.tripfulaxel.livechat.model.service.ChatService;

@Controller
@RequestMapping("/share/*")
public class ChatController {

	private ChatService chatService;
	
	@Autowired
	public ChatController(ChatService chatService) {
		this.chatService = chatService;
	}
	
	@PostMapping("insert/chatRoom")
	public String insertChatRoom(@RequestParam String userEmail) {
		
		
		return "user/livechat/chatList";
	}
	
	@RequestMapping("select/chatRoomList")
	public String selectChatRoomList(Model model, @RequestParam int roomCode) {
		System.out.println("ffㄹㄹㄹㄹㄹㄹㄹㄹ룸코드");
		System.out.println(roomCode);
		Map<String, Integer> parameter = new HashedMap();
		parameter.put("roomCode", roomCode);
		
		List<ChatRoomDTO> roomList = chatService.selectChatRoomList(parameter);
		
		for(ChatRoomDTO room : roomList) {
			System.out.println(room);
			
//			for(String email : room.getUserEmailList()) {
//				System.out.println(email);
//			}
//			for(ChatMessageDTO message : room.getMessageList()) {
//				System.out.println(message);
//			}
		}
		
		model.addAttribute("roomList", roomList);
		
		return "user/livechat/chatList";
	}
	
}
