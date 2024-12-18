package com.office.order.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.office.vo.order.orderInfoVO;
import com.office.vo.product.ProductInfoVO;

@Repository
public interface orderDao {
	
	public List<orderInfoVO> selectOrderList(orderInfoVO vo) throws Exception;
	public int updateOrderSt(orderInfoVO vo) throws Exception;
	public orderInfoVO selectOrderInfo(orderInfoVO vo) throws Exception;
	public List<ProductInfoVO> selectProduct(orderInfoVO vo) throws Exception;

}
