package com.office.schedule.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.office.vo.order.orderInfoVO;

@Repository
public interface DailyOrderDao {
	
	public orderInfoVO selectOrder(orderInfoVO vo) throws Exception;
	
	public int insertOrder(orderInfoVO vo) throws Exception;

}
