package com.maximusteam.tripfulaxel.user.model.dao;

import com.maximusteam.tripfulaxel.user.model.dto.UserDTO;

/**
 * @author JJY
 *
 */
public interface UserMapper {


	int registUser(UserDTO user);

	UserDTO loginUser(UserDTO user);

}
