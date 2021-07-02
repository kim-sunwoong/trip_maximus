package com.maximusteam.tripfulaxel.livechat.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.maximusteam.tripfulaxel.livechat.model.dto.ChatMessageDTO;
import com.maximusteam.tripfulaxel.livechat.model.dto.ChatRoomDTO;
import com.maximusteam.tripfulaxel.livechat.model.service.ChatService;

@Controller
public class ChatController {

	private ChatService chatService;
	
	@Autowired
	public ChatController(ChatService chatService) {
		this.chatService = chatService;
	}
	
	@MessageMapping("/send")
	@SendTo("/topic/{roomCode}")
	public ChatMessageDTO sendMsg(ChatMessageDTO message) {
		System.out.println("오긴하니..");
		message.getRoomCode();
		System.out.println(message.getMessageContent());
		
		return message;
	}
	
	
	@PostMapping("/share/insert/chatRoom")
	public String insertChatRoom(@RequestParam String userEmail) {
		
		
		return "user/livechat/chatList";
	}
	
	@RequestMapping("/share/select/chatRoom")
	public String selectChatRoomList(Model model, @RequestParam int roomCode, @RequestParam(required = false) int userCode) {
		
		
		Map<String, Integer> parameter = new HashedMap();
		parameter.put("roomCode", roomCode);
		parameter.put("userCode", userCode);
		
		List<ChatRoomDTO> roomList = chatService.selectChatRoom(parameter);
		
		for(ChatRoomDTO room : roomList) {
			System.out.println(room);
			
//			for(String email : room.getUserEmailList()) {
//				System.out.println(email);
//			}
//			for(ChatMessageDTO message : room.getMessageList()) {
//				System.out.println(message);
//			}
		}
		
		if(roomCode != 0 && userCode != 0) {
			ChatRoomDTO room = roomList.get(0);
			model.addAttribute("room", room);
			
			return "user/livechat/chat";
		} else {
			model.addAttribute("roomList", roomList);
			
			return "user/livechat/chatList";
		}
	}
	
}
