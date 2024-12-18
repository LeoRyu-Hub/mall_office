package com.office.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.office.order.dao.orderDao;
import com.office.vo.order.orderInfoVO;
import com.office.vo.product.ProductInfoVO;

@Service
public class orderService {
	
	@Autowired
	orderDao dao;
	
	public List<orderInfoVO> selectOrderList(orderInfoVO vo) throws Exception{
		return dao.selectOrderList(vo);
	}
	
	public int updateOrderSt(orderInfoVO vo) throws Exception{
		return dao.updateOrderSt(vo);
	}
	public orderInfoVO selectOrderInfo(orderInfoVO vo) throws Exception{
		return dao.selectOrderInfo(vo);
	}
	
	public List<ProductInfoVO> selectProduct(orderInfoVO vo) throws Exception{
		return dao.selectProduct(vo);
	}
	

}
