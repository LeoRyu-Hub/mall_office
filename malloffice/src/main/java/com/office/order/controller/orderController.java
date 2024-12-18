package com.office.order.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.office.order.service.orderService;
import com.office.vo.order.orderInfoVO;
import com.office.vo.product.ProductInfoVO;

@Controller
public class orderController {
	
	@Autowired
	orderService service;
	
	@RequestMapping("/order/list")
	public String list() throws Exception{
		return "order/order_list";
	}
	
	@RequestMapping("/order/view")
	public String view(@ModelAttribute orderInfoVO vo, Model model) throws Exception{
		model.addAttribute("orderNo",vo.getOrderNo());
		return "order/order_view";
	}
	
	@RequestMapping("/order/search")
	@ResponseBody
	public List<orderInfoVO> getnotice(@ModelAttribute orderInfoVO vo)
			throws Exception{
		
		List<orderInfoVO> list = service.selectOrderList(vo);
		return list;
	}
	
	@RequestMapping("/orderSt/update")
	@ResponseBody
	public boolean update(@ModelAttribute orderInfoVO vo)
			throws Exception{
		int cnt=0;
		for(int i=0;i<vo.getOrderNoArry().length;i++) {
			if(vo.getOrderNoArry()[i]!=null && !vo.getOrderNoArry()[i].equals("")) {
				vo.setOrderNo(vo.getOrderNoArry()[i]);
				cnt += service.updateOrderSt(vo);
			}
		}
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}
	
	
	@RequestMapping("/orderViewSt/update")
	@ResponseBody
	public boolean viewUpdate(@ModelAttribute orderInfoVO vo)
			throws Exception{
		int cnt=0;
		cnt = service.updateOrderSt(vo);
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}

	
	@RequestMapping("/order/getInfo")
	@ResponseBody
	public orderInfoVO getinfo(@ModelAttribute orderInfoVO vo)
			throws Exception{
		
		vo = service.selectOrderInfo(vo);
		
		List<ProductInfoVO> list = service.selectProduct(vo);
		
		vo.setOrderProductList(list);
		
		return vo;
	}

}
