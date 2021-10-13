package com.hl.demo.user.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
	protected static final String NAMESPACE = "com.user.";
	
	@Autowired
	private SqlSession sqlSession;
	

}
