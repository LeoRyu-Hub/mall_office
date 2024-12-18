package com.office.schedule.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.office.schedule.Dao.DailyOrderDao;
import com.office.vo.order.orderInfoVO;

@Service
public class DailyOrderService {
	
	@Autowired
	DailyOrderDao dao;

	public orderInfoVO selectOrder(orderInfoVO vo) throws Exception {
		return dao.selectOrder(vo);
	}
	
	public int insertOrder(orderInfoVO vo) throws Exception{
		return dao.insertOrder(vo);
	}

}
