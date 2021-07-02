package com.maximusteam.tripfulaxel.livechat.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessagingTemplate;
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
	SimpMessagingTemplate template;
	
	@Autowired
	public ChatController(ChatService chatService, SimpMessagingTemplate template) {
		this.chatService = chatService;
		this.template = template;
	}
	
	@MessageMapping("/message")
	public void chat(ChatMessageDTO message) {
		
		
		
		
		this.template.convertAndSend("/topic/group/" + message.getRoomCode(), message);
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
		
//		내 채팅과 접속유저들의 채팅을 구분해서 나눔 처리
		List<ChatMessageDTO> myChat = new ArrayList<ChatMessageDTO>();
		List<ChatMessageDTO> youChat = new ArrayList<ChatMessageDTO>();
		
		if(roomCode != 0 && userCode != 0) {
			
			ChatRoomDTO room = roomList.get(0);
			
			for(ChatMessageDTO message : room.getMessageList()) {
				
				if(message.getUserCode() == userCode) {
					myChat.add(message);
				} else {
					youChat.add(message);
				}
			}
			
			model.addAttribute("room", room);
			model.addAttribute("myChat", myChat);
			model.addAttribute("youChat", youChat);
			
			return "user/livechat/chat";
		} else {
			model.addAttribute("roomList", roomList);
			
			return "user/livechat/chatList";
		}
	}
	
}
