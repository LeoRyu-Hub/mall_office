package com.office.adjustment.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.office.adjustment.service.adjustmentService;
import com.office.vo.order.orderInfoVO;

@Controller
public class adjustmentController {
	
	@Autowired
	adjustmentService service;
	
	@RequestMapping("/adjustment/list")
	public String list() throws Exception{
		return "adjustment/adjustment_list";
	}
	
	@RequestMapping("/adjustment/view")
	public String view() throws Exception{
		return "adjustment/adjustment_view";
	}
	
	@RequestMapping("/adjustment/search")
	@ResponseBody
	public List<orderInfoVO> getnotice(@ModelAttribute orderInfoVO vo)
			throws Exception{
		
		List<orderInfoVO> list = service.selectAdjustmentList(vo);
		return list;
	}

}
