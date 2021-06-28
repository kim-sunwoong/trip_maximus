package com.maximusteam.tripfulaxel.user.model.service;

import com.maximusteam.tripfulaxel.user.model.dto.UserDTO;

/**
 * @author JJY
 *
 */
public interface UserService {
 
	/**
	 * 회원가입용 메소드
	 * @param user
	 * @return
	 */
	boolean registUser(UserDTO user);
	
}
