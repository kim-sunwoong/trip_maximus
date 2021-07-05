package com.maximusteam.tripfulaxel.user.model.dao;

import com.maximusteam.tripfulaxel.user.model.dto.UserDTO;

/**
 * @author JJY
 *
 */
public interface UserMapper {


	int registUser(UserDTO user);
	
	int duplicationCheck(UserDTO user);

	UserDTO loginUser(UserDTO user);

	UserDTO findEmail(UserDTO user);

	UserDTO searchPwd(UserDTO user);

	int updateUser(UserDTO user);

}
