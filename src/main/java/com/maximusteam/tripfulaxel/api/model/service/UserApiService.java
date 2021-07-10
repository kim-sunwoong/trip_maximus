package com.maximusteam.tripfulaxel.api.model.service;

import java.util.List;

import com.maximusteam.tripfulaxel.api.model.dto.UserApiDTO;

public interface UserApiService {

	List<UserApiDTO> getUsers();

	UserApiDTO getUser(int id);

	void registUser(UserApiDTO userDTO);

	void modifyUser(UserApiDTO userDTO);

	void removeUser(int id);

}
