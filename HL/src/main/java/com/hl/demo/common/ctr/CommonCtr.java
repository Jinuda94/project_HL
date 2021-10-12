package com.hl.demo.common.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hl.demo.common.DAO.CommonDAO;

@Controller
@RequestMapping("/common")
public class CommonCtr {
	@Autowired
	private CommonDAO cDao;
	
	@GetMapping(path = "/mtest")
	public void helloWorld() {
		String str = cDao.selectName();
		System.out.println(str);
		
	}
	
	
	
	
}
