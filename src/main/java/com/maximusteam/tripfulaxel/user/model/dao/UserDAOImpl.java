package com.maximusteam.tripfulaxel.user.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.maximusteam.tripfulaxel.user.model.dto.UserDTO;

/**
 * @author JJY
 *
 */
public class UserDAOImpl implements UserDAO{

	private SqlSessionTemplate sqlSession;
	
	public UserDAOImpl() {}
	
	public void setSqlSession(SqlSessionTemplate SqlSession) {
		this.sqlSession = sqlSession;
	}
	


	/**
	 * 회원가입용 메소드
	 */
	@Override
	public int regist(UserDTO user) {
	
		return sqlSession.insert("userMapper.regist", user);
	}

}
