package com.maximusteam.tripfulaxel.livechat.model.dao;

import java.util.List;
import java.util.Map;

import com.maximusteam.tripfulaxel.livechat.model.dto.ChatRoomDTO;

public interface ChatMapper {

	public List<ChatRoomDTO> selectChatRoom(Map<String, Integer> parameter);

}
