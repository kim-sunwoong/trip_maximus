package com.maximusteam.tripfulaxel.api.model.service;

import java.util.List;

import com.maximusteam.tripfulaxel.api.model.dto.NewUserApiDTO;
import com.maximusteam.tripfulaxel.api.model.dto.UserApiDTO;

public interface UserApiService {

	List<UserApiDTO> getUsers();

	UserApiDTO getUser(int id);

	UserApiDTO registUser(NewUserApiDTO userDTO);

	UserApiDTO modifyUser(UserApiDTO userDTO);

	UserApiDTO removeUser(int id);

}
