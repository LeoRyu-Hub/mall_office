package com.office.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testController {
	
	@RequestMapping("/test")
	public String list() throws Exception{
		return "test/test";
	}

}