package com.office.connection.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.office.connection.service.connectionService;
import com.office.vo.connection.connectionInfoVO;
import com.office.vo.connection.connectionItemInfoVO;
import com.office.vo.product.ProductInfoVO;

@Controller
public class connectionController {
	
	@Autowired
	connectionService service;
	
	@RequestMapping("/connection/list")
	public String list() throws Exception{
		return "connection/connection_list";
	}
	
	@RequestMapping("/connectionitem/list")
	public String itemList() throws Exception{
		return "connection/connectionitem_list";
	}
	
	@RequestMapping("/connectionitem/view")
	public String itemView(@ModelAttribute connectionInfoVO vo, Model model) throws Exception{
		model.addAttribute("cnOrderNo",vo.getCnOrderNo());
		model.addAttribute("connectionCode",vo.getConnectionCode());
		
		return "connection/connectionitem_view";
	}
	
	@RequestMapping("/connection/view")
	public String view(@ModelAttribute connectionInfoVO vo, Model model) throws Exception{
		model.addAttribute("connectionCode",vo.getConnectionCode());
		
		return "connection/connection_view";
	}
	
	@RequestMapping("/connection/getInfo")
	@ResponseBody
	public connectionInfoVO getInfo(@ModelAttribute connectionInfoVO vo)
			throws Exception{
		
		vo = service.selectConnectiontInfo(vo);
				
		return vo;
	}
	
	@RequestMapping("/connectionitem/getInfo")
	@ResponseBody
	public connectionInfoVO getItemInfo(@ModelAttribute connectionInfoVO vo)
			throws Exception{
		
		connectionInfoVO cvo = service.selectConnectiontItemInfo(vo);
		
		List<connectionInfoVO> list = service.selectConnectiontItemList(vo);
		
		cvo.setConnectionItemList(list);
				
		return cvo;
	}
	
	@RequestMapping("/connection/search")
	@ResponseBody
	public List<connectionInfoVO> getnotice(@ModelAttribute connectionInfoVO vo)
			throws Exception{
		
		List<connectionInfoVO> list = service.selectConnectiontList(vo);
		return list;
	}
	
	@RequestMapping("/connection/update")
	@ResponseBody
	public boolean update(@ModelAttribute connectionInfoVO vo)
			throws Exception{
		
		int cnt=0;
		if(vo.getCrudType()!=null && vo.getCrudType().equals("U")) {
			 cnt = service.updateConnection(vo);
		}else if(vo.getCrudType()!=null && vo.getCrudType().equals("I")) {
			cnt = service.saveConnection(vo);
		}
		
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}
	
	@RequestMapping("/connection/save")
	@ResponseBody
	public boolean save(@ModelAttribute connectionInfoVO vo)
			throws Exception{
		
		int cnt = service.saveConnection(vo);
		if(cnt>0) {
			return true;
		}else {
			return true;
		}
	}
	
	@RequestMapping("/connectionitem/search")
	@ResponseBody
	public List<connectionInfoVO> getItemList(@ModelAttribute connectionInfoVO vo)
			throws Exception{
		
		List<connectionInfoVO> list = service.selectConnectiontItemList(vo);
		return list;
	}
	
	@RequestMapping("/item/list")
	@ResponseBody
	public List<ProductInfoVO> getnotice(@ModelAttribute ProductInfoVO vo)
			throws Exception{
		
		List<ProductInfoVO> list = service.selectItemList(vo);
		return list;
	}
	
	@RequestMapping("/connectionitem/save")
	@ResponseBody
	public boolean save(@ModelAttribute connectionItemInfoVO vo)
			throws Exception{
		
		String newCnOrderNo =service.selectMaxCnOrderNo(vo);
		vo.setCnOrderNo(newCnOrderNo);
	
		int cnt= 0;
		int count = 0;
		count = service.insertConnectioninfo(vo);
		for(int i=0;i<vo.getConnectionItemList().size();i++) {
			vo.getConnectionItemList().get(i).setCnOrderNo(newCnOrderNo); 
			//vo.getConnectionItemList().get(i):i번째의 전체 주문정보조회 --- 그후 	setCnOrderNo(newCnOrderNo) setCnOrderNo라는 속성 생성후 newCnOrderNo부여
			vo.getConnectionItemList().get(i).setConnectionCode(vo.getConnectionCode());
			//리스트에 connectionCode속성에 vo에 담겨져 있던 connectionCode부여 
			cnt+=service.insertConnectionItem(vo.getConnectionItemList().get(i));
			//getConnectionItemList().get(i)의 전체 정보들을 insert
		}
		
		//int cnt = service.insertConnectionItem(vo);
		if(cnt>0 && count>0) {
			return true;
		}else {
		return false;
		}
	}
	


}
