package com.maximusteam.tripfulaxel.api.model.dao;

import java.util.List;

import com.maximusteam.tripfulaxel.api.model.dto.UserApiDTO;

public interface UserApiMapper {

	List<UserApiDTO> getUsers();

}
