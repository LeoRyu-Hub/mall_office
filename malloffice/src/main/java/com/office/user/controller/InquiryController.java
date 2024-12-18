package com.office.user.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.office.user.service.InquiryService;
import com.office.vo.user.UserInfoVO;
import com.office.vo.user.UserInquiryVO;


@Controller
public class InquiryController {
	
	@Autowired
	InquiryService service;
	
	@RequestMapping("/user/inquiry")
	public String inquiry() throws Exception{
		return "user/user_inquiry";
	}
	
	@RequestMapping("/inquiry/search")
	@ResponseBody
	public List<UserInquiryVO> getnotice(@ModelAttribute UserInquiryVO vo)
			throws Exception{
		
		List<UserInquiryVO> list = service.selectInquiryList(vo);
		return list;
	}
	
	@RequestMapping("/inquiry/view") 
	public String view(@ModelAttribute UserInquiryVO vo, Model model) throws Exception{
		model.addAttribute("userId",vo.getUserId());
		model.addAttribute("inquirySq",vo.getInquirySq());
		return "user/inquiry_view";
	}
	
	@RequestMapping("/inquiry/getInfo")
	@ResponseBody
	public UserInquiryVO inquiry(@ModelAttribute UserInquiryVO vo)
			throws Exception{
		
		vo = service.selectInquiry(vo);
		
		return vo;
	}
	
	@RequestMapping("/inquiry/reg")
	@ResponseBody
	public boolean update(@ModelAttribute UserInquiryVO vo)
			throws Exception{
		
		int cnt = service.updateInquiry(vo);
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}
	


}
