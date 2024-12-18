package com.office.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.office.user.service.UserService;
import com.office.user.vo.UserVO;
import com.office.vo.order.orderInfoVO;
import com.office.vo.user.UserInfoVO;

@Controller
public class UserController {

	@Autowired
	UserService service;

	@RequestMapping("/user/list")
	public String list() throws Exception {
		return "user/user_list";
	}

	@RequestMapping("/user/list_test")
	public String list_test() throws Exception {
		return "user/user_list_test";
	}

	@RequestMapping("/user/view_test")
	public String view_test() throws Exception {
		return "user/user_view_test";
	}

	@RequestMapping("/user/search")
	@ResponseBody
	public UserVO getnotice(@ModelAttribute UserInfoVO vo) throws Exception {
		
		int totalPage = service.selectUserInfoCount(vo);

		List<UserInfoVO> list = service.selectUserInfoList(vo);
		
		UserVO uservo = new UserVO();
		uservo.setUserlist(list);  
		uservo.setTotal(totalPage);
		uservo.setStartPage(vo.getStartPage());
		uservo.setCurrentPage(vo.getCurrentPage());
		
		return uservo;
	}

	@RequestMapping("/user/view") // attribute 는 화면에서 던진 값을 받을 때, model 은 값을 다시 화면으로 던질 때
	public String view(@ModelAttribute UserInfoVO vo, Model model) throws Exception {
		model.addAttribute("userId", vo.getUserId());
		return "user/user_view";
	}

	@RequestMapping("/user/getInfo")
	@ResponseBody
	public UserInfoVO info(@ModelAttribute UserInfoVO vo) throws Exception {
		
		vo = service.selectUserInfo(vo);
		
		List<orderInfoVO> list = service.selectOrderList(vo);

		vo.setOrderList(list);
		return vo;
	}

}
