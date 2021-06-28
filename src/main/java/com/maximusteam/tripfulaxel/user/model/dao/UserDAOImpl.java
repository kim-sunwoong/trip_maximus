package com.maximusteam.tripfulaxel.user.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

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
	
	@Override
	public int regist(UserDAO user) {
			
		return sqlSession.insert("userMapper.regist", user);
	}

}
