package com.office.adjustment.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.office.vo.order.orderInfoVO;

@Repository
public interface adjustmentDao {
	
	public List<orderInfoVO> selectAdjustmentList(orderInfoVO vo) throws Exception;

}
