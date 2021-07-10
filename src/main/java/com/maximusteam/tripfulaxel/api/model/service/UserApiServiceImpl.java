package com.maximusteam.tripfulaxel.api.model.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.api.model.dao.UserApiMapper;
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
		List<UserApiDTO> user = userApiMapper.getUsers();
		return null;
	}

	@Override
	public UserApiDTO getUser(int id) {
		return null;
	}

	@Override
	public void registUser(UserApiDTO userDTO) {
		
	}

	@Override
	public void modifyUser(UserApiDTO userDTO) {
		
	}

	@Override
	public void removeUser(int id) {
		
	}

}
