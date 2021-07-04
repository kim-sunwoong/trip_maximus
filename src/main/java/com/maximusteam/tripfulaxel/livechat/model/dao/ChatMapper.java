package com.maximusteam.tripfulaxel.livechat.model.dao;

import java.util.List;
import java.util.Map;

import com.maximusteam.tripfulaxel.livechat.model.dto.ChatJoinUserDTO;
import com.maximusteam.tripfulaxel.livechat.model.dto.ChatMessageDTO;
import com.maximusteam.tripfulaxel.livechat.model.dto.ChatRoomDTO;

public interface ChatMapper {
	
	public int insertMessage(ChatMessageDTO message);

	public List<ChatRoomDTO> selectChatRoom(Map<String, Integer> parameter);

	public int insertRoom(ChatRoomDTO room);

	public int insertChatJoin(ChatJoinUserDTO user);

}
