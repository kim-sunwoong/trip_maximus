package com.maximusteam.tripfulaxel.user.model.service;

import com.maximusteam.tripfulaxel.user.model.dao.UserDAO;
import com.maximusteam.tripfulaxel.user.model.dto.UserDTO;
/**
 * @author JJY
 *
 */
public class UserServiceImpl implements UserService{
	
	
	  private UserDAO userDAO;
	  
	 
	  public UserServiceImpl(UserDTO user) { 
		 this.userDAO = userDAO;
	}


	@Override
	public boolean registUser(UserDTO user) {
	
		return userDAO.regist(user) > 0? true:false;
	}






	  
	  
} 