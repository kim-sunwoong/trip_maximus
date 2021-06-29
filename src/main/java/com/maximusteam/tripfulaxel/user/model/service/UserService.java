package com.maximusteam.tripfulaxel.user.model.service;

import org.springframework.stereotype.Service;

import com.maximusteam.tripfulaxel.user.model.dto.UserDTO;

/**
 * @author JJY
 *
 */
@Service
public interface UserService {

	boolean registUser(UserDTO user);

}
