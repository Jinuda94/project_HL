package com.hl.demo.admin.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.hl.demo.admin.VO.AdminVO;

@Repository
public class AdminDAO {
	protected static final String NAMESPACE = "com.admin.";
	
	@Autowired
	private SqlSession sqlSession;
	
	/**
	 * 도서 입고 DB입력
	 */
	public int insertBook(AdminVO param) {
		return sqlSession.insert(NAMESPACE+"insertBook",param);			
	}	

	
}