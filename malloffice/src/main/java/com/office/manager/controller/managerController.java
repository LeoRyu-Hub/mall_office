package com.office.manager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.office.manager.service.managerService;
import com.office.util.SessionUtil;
import com.office.vo.manager.managerInfoVO;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class managerController {
	
	@Autowired
	managerService service;
	
	@RequestMapping("/manager/list")
	public String list() throws Exception{
		return "manager/manager_list";
	}
	
	@RequestMapping("/manager/loginPage")
	public String login(@ModelAttribute managerInfoVO vo, Model model) throws Exception{
		model.addAttribute("url", vo.getUrl());
		return "manager/manager_loginPage";
	}
	
	@RequestMapping("/manager/search")
	@ResponseBody
	public List<managerInfoVO> getnotice(@ModelAttribute managerInfoVO vo)
			throws Exception{
		
		List<managerInfoVO> list = service.selectManagertList(vo);
		return list;
	}
	
	@RequestMapping("/manager/reg")
	public String reg(@ModelAttribute managerInfoVO vo, Model model) throws Exception{
		model.addAttribute("managerId",vo.getManagerId());
		
		return "manager/manager_reg";
	}
	
	@RequestMapping("/manager/getInfo")
	@ResponseBody
	public managerInfoVO getInfo(@ModelAttribute managerInfoVO vo) throws Exception{
		
		vo = service.selectManagerInfo(vo);
		
		return vo;
	}
	
	@RequestMapping("/manager/join")
	@ResponseBody
	public boolean join(@ModelAttribute managerInfoVO vo) throws Exception{
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		vo.setPassword(encoder.encode(vo.getPassword()));
		
		int cnt = service.insertManagerInfo(vo);
		if(cnt>0) {
			return true;
		}else {
			return false;
		}		
		
	}
	
	@RequestMapping("/manager/login")
	@ResponseBody
	public boolean login(@ModelAttribute managerInfoVO vo,
			HttpServletRequest request) throws Exception{
		
		managerInfoVO managervo = service.selectManager(vo);
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		if(encoder.matches(vo.getPassword(),managervo.getPassword())) {
			managervo.setPassword("");
			SessionUtil.set(request,"MANAGER",managervo);
			return true;
		}else {
			return false;
		}	
	}

}
