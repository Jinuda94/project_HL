package com.hl.demo.admin.ctr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminBookCtr {
	
	@RequestMapping("/insertBook")
	String asd() {
		System.out.println("여기로옴.");
		return "main";
	}


}
