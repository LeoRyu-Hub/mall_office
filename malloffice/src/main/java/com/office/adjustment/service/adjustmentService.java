package com.office.adjustment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.office.adjustment.dao.adjustmentDao;
import com.office.vo.order.orderInfoVO;

@Service
public class adjustmentService {
	
	@Autowired
	adjustmentDao dao;
	
	public List<orderInfoVO> selectAdjustmentList(orderInfoVO vo) throws Exception{
		return dao.selectAdjustmentList(vo);
	}

}
