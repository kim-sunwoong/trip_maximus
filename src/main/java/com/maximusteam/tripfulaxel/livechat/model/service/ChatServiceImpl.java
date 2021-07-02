package com.maximusteam.tripfulaxel.livechat.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.livechat.model.dao.ChatMapper;
import com.maximusteam.tripfulaxel.livechat.model.dto.ChatRoomDTO;

@Service
public class ChatServiceImpl implements ChatService{

	private ChatMapper chatMapper;
	
	@Autowired
	public ChatServiceImpl(ChatMapper chatMapper) {
		this.chatMapper = chatMapper;
	}

	@Override
	public List<ChatRoomDTO> selectChatRoom(Map<String, Integer> parameter) {
		return chatMapper.selectChatRoom(parameter);
	}


}
