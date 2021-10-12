package com.hl.demo.admin.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO {
	protected static final String NAMESPACE = "com.admin.";
	
	@Autowired
	private SqlSession sqlSession;

}
