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

import com.maximusteam.tripfulaxel.livechat.model.dto.ChatJoinUserDTO;
import com.maximusteam.tripfulaxel.livechat.model.dto.ChatMessageDTO;
import com.maximusteam.tripfulaxel.livechat.model.dto.ChatRoomDTO;
import com.maximusteam.tripfulaxel.livechat.model.service.ChatService;
import com.maximusteam.tripfulaxel.livechat.model.service.ChatServiceImpl;

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
		int messageResult = 0;
		int joinResult = 0;
		int deleteJoinResult = 0;
		
		if(message.getMessageType().equals("join")) {
			
			ChatJoinUserDTO user = new ChatJoinUserDTO();
			
			user.setRoomCode(message.getRoomCode());
			user.setUserCode(message.getUserCode());
			
			joinResult = chatService.insertChatJoin(user);
			
//			user chatroom 접속시 접속 데이터 저장
			if(joinResult > 0) {
				
				String joinMessage = message.getUserEmail() + " 님이 입장 하셨습니다.";
				message.setMessageContent(joinMessage);
				
				this.template.convertAndSend("/topic/group/" + message.getRoomCode(), message);
			} else {
				System.out.println("유저 채팅 접속 실패!!!");
			}
			
			
		} else if(message.getMessageType().equals("out")){
			
			String outMessage = message.getUserEmail() + " 님이 퇴장 하셨습니다.";
			message.setMessageContent(outMessage);
			
			ChatJoinUserDTO user = new ChatJoinUserDTO();
			
			user.setRoomCode(message.getRoomCode());
			user.setUserCode(message.getUserCode());
			
			deleteJoinResult = chatService.deleteJoinUser(user);
			
			if(deleteJoinResult > 0) {
				this.template.convertAndSend("/topic/group/" + message.getRoomCode(), message);
				
			} else {
				System.out.println("채팅방 퇴장에 실패 하셨습니다.");
			}
			
		} else {
			messageResult = chatService.insertMessage(message);
			
		}
		if(messageResult > 0) {
			this.template.convertAndSend("/topic/group/" + message.getRoomCode(), message);
		}
	}
	
	@RequestMapping("/share/insert/chatRoom")
	public String insertChatRoom(Model model, @RequestParam String roomTitle, int userCode) {
		
		ChatJoinUserDTO user = new ChatJoinUserDTO();
		user.setUserCode(userCode);
		
		List<ChatJoinUserDTO> joinUser = new ArrayList<ChatJoinUserDTO>();
		joinUser.add(user);
		
		ChatRoomDTO room = new ChatRoomDTO();
		room.setRoomTitle(roomTitle);
		room.setJoinUserList(joinUser);
		
		int insertRoomResult = chatService.insertRoom(room);
		
		user.setRoomCode(room.getRoomCode());
		
		int insertChatJoinResult = 0;
		if(insertRoomResult > 0) {
			insertChatJoinResult = chatService.insertChatJoin(user);
		}
		if(insertChatJoinResult > 0) {
			model.addAttribute("room", room);
			return "user/livechat/chat";
		} else {
			return "fail";
		}
		
	}
	
	@RequestMapping("/share/select/chatRoom")
	public String selectChatRoomList(Model model, @RequestParam int roomCode, @RequestParam(required = false) int userCode) {
		
		Map<String, Integer> parameter = new HashedMap();
		parameter.put("roomCode", roomCode);
		parameter.put("userCode", userCode);
		
		List<ChatRoomDTO> roomList = chatService.selectChatRoom(parameter);
		
		System.out.println(roomList);
//		내 채팅과 접속유저들의 채팅을 구분해서 나눔 처리
		List<ChatMessageDTO> myChat = new ArrayList<ChatMessageDTO>();
		List<ChatMessageDTO> youChat = new ArrayList<ChatMessageDTO>();
		
		if(roomCode != 0 && userCode != 0) {
			
			ChatRoomDTO room = roomList.get(0);
			
			List<ChatJoinUserDTO> joinList = chatService.selectJoinList(parameter);
			
			room.setJoinUserList(joinList);
			
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
