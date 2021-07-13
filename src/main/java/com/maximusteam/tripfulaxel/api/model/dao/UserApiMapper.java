package com.maximusteam.tripfulaxel.api.model.dao;

import java.util.List;

import com.maximusteam.tripfulaxel.api.model.dto.NewUserApiDTO;
import com.maximusteam.tripfulaxel.api.model.dto.UserApiDTO;

public interface UserApiMapper {

	List<UserApiDTO> getUsers();
	
	UserApiDTO getUser(int id);

	int registUser(NewUserApiDTO userDTO);
	
	int removeUser(int id);
	
	int modifyUser(UserApiDTO userDTO);

}
