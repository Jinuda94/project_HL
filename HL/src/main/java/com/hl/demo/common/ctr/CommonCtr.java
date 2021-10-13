package com.hl.demo.common.ctr;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hl.demo.common.DAO.CommonDAO;
import com.hl.demo.common.VO.BookVO;
import com.hl.demo.common.VO.SearchVO;
import com.hl.demo.common.VO.UserVO;
import com.hl.demo.common.another.UtilEtc;



@Controller
@RequestMapping("/common")
public class CommonCtr {
	@Autowired
	private CommonDAO cDao;
	
	/*회원 가입 페이지 이동*/
	@GetMapping("/join")
	public String joinget() {
		System.out.println("join get");
		return "/user/join";
	}
	
	/*회원 가입 정보입력*/
	@PostMapping("/join")
	public String joinpost(UserVO uv) {
		System.out.println("join post");
		System.out.println(uv.getUser_ID());
		int result = cDao.insertUser(uv);
		if(result==1) {
			System.out.println("입력 성공");
		}else {
			System.out.println("입력 실패");
		}
		
		return "redirect:/";
	}
	
	/*유저 아이디 중복확인*/
	@PostMapping("/useridcheck")
	public void useridcheck(HttpServletRequest request, HttpServletResponse response, String User_ID) {
		System.out.println(User_ID);
		int data = 0;
		if (cDao.Selectid(User_ID) != null) {
			data = 1;
		}

		UtilEtc.responseJsonValue(response, data);
	}
	/*로그인 페이지로 이동*/
	@GetMapping("/login")
	String gotoLogin() {
		
		return "login";
	}
	/*책 목록 페이지 이동*/
	@GetMapping("/searchBook")
	public String booklist() {
		System.out.println("book get");
		return "/user/searchBookView";
	}
	
	/*책 검색 ajax*/
	@PostMapping("/searchBook")
	public void booksearch(HttpServletRequest request, HttpServletResponse response, SearchVO sv, String search) {
		System.out.println(sv.getSearchType());
		System.out.println(sv.getSearch());
		System.out.println("-----------------");
		List<BookVO> booklist =cDao.selectBooks(sv);
		for(BookVO item : booklist) {
			System.out.println(item.getBook_Title());
		}
		UtilEtc.responseJsonValue(response,booklist);
	}
	
}
