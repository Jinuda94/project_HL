package com.hl.demo.common.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hl.demo.common.VO.UserVO;

@Repository
public class CommonDAO {
	protected static final String NAMESPACE = "com.common.";

	@Autowired
	private SqlSession sqlSession;

	/**
	 * 유저 회원가입 정보 DB입력
	 */
	public int insertUser(UserVO param){
		return sqlSession.insert(NAMESPACE+"insertUser", param);
	}
	
	/**
	 * 유저 아이디 중복확인
	 */
	public String Selectid(String param){
		return sqlSession.selectOne(NAMESPACE+"Selectid",param);
	}


}
