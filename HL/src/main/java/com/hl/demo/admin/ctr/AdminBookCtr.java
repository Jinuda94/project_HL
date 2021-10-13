package com.hl.demo.admin.ctr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hl.demo.admin.DAO.AdminDAO;
import com.hl.demo.admin.VO.AdminVO;

@Controller
@RequestMapping("/admin")
public class AdminBookCtr {

	@Autowired
	private AdminDAO Dao;

	/**
	 * 도서 입고 링크 접속
	 */
	@GetMapping("/insertBook")
	String insertBook_link() {
		System.out.println("[ Mapping to 도서 입고 ]");
		return "admin/insertBook";
	}

	/**
	 * 도서입고 DB 등록
	 */
	@PostMapping("/insertBook")
	String insertBook_DB(AdminVO av, Model model) {
		System.out.println("[ Mapping to 도서 DB등록 ]");
		int result = Dao.insertBook(av);			
		if(result==1) {
			System.out.println("입력 성공");
			model.addAttribute("result", "sucess");
		}else {
			System.out.println("입력 실패");
			model.addAttribute("result", "fail");
		}
		return "/admin/insertBookResult";
	}

	/**
	 * 도서 조회 링크 접속
	 */
	@GetMapping("/searchBook")
	String searchBook_link() {

		return "admin/searchBook";
	}
	
	
	
}