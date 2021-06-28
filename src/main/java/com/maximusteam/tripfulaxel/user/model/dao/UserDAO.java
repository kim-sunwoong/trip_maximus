package com.maximusteam.tripfulaxel.user.model.dao;

import com.maximusteam.tripfulaxel.user.model.dto.UserDTO;

/**
 * @author JJY
 *
 */
public interface UserDAO {
 

	/**
	 * 회원가입용 메소드
	 * @param user
	 * @return
	 */
	int regist(UserDTO user);
	
	
}
