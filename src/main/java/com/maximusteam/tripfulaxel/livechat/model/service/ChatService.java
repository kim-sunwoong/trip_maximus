package com.maximusteam.tripfulaxel.livechat.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.livechat.model.dto.ChatRoomDTO;

public interface ChatService {

	public List<ChatRoomDTO> selectChatRoom(Map<String, Integer> parameter);

}
