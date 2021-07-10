package com.maximusteam.tripfulaxel.api.model.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.api.model.dao.UserApiMapper;
import com.maximusteam.tripfulaxel.api.model.dto.NewUserApiDTO;
import com.maximusteam.tripfulaxel.api.model.dto.UserApiDTO;

@Service
public class UserApiServiceImpl implements UserApiService {

	@Inject
	private final UserApiMapper userApiMapper;
	
	public UserApiServiceImpl(UserApiMapper userApiMapper) {
		this.userApiMapper = userApiMapper;
	}
	
	@Override
	public List<UserApiDTO> getUsers() {
		List<UserApiDTO> userList = userApiMapper.getUsers();
		return userList;
	}

	@Override
	public UserApiDTO getUser(int id) {
		UserApiDTO user = userApiMapper.getUser(id);
		return user;
	}

	@Override
	public UserApiDTO registUser(NewUserApiDTO userDTO) {
		int result = userApiMapper.registUser(userDTO);
		
		if(result > 0 ) {
			return userApiMapper.getUser(userDTO.getUserCode());
		}
		return null;
	}

	@Override
	public UserApiDTO modifyUser(UserApiDTO userDTO) {
		
		UserApiDTO user = userApiMapper.getUser(userDTO.getUserCode());

		if(user != null) {
			int result = userApiMapper.modifyUser(userDTO);
			if(result > 0 ) {
				return user;
			}
		}
		return null;
	}

	@Override
	public UserApiDTO removeUser(int id) {
		
		UserApiDTO userDTO = userApiMapper.getUser(id);

		if(userDTO != null) {
			int result = userApiMapper.removeUser(id);
			if(result > 0 ) {
				return userDTO;
			}
		}
		return null;
	}

}
