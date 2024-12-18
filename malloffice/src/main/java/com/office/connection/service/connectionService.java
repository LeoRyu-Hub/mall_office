package com.office.connection.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.office.connection.dao.connectionDao;
import com.office.vo.connection.connectionInfoVO;
import com.office.vo.connection.connectionItemInfoVO;
import com.office.vo.product.ProductInfoVO;

@Service
public class connectionService {
	
	@Autowired
	connectionDao dao;
	
	public List<connectionInfoVO> selectConnectiontList(connectionInfoVO vo) throws Exception{
		return dao.selectConnectiontList(vo);
	}

	public connectionInfoVO selectConnectiontInfo(connectionInfoVO vo) throws Exception{
		return dao.selectConnectiontInfo(vo);
	}
	
	public int updateConnection(connectionInfoVO vo) throws Exception{
			return dao.updateConnection(vo);
	}
	
	public int saveConnection(connectionInfoVO vo) throws Exception{
		return dao.saveConnection(vo);
	}
	
	public List<connectionInfoVO> selectConnectiontItemList(connectionInfoVO vo) throws Exception{
		return dao.selectConnectiontItemList(vo);
	}
	
	public connectionInfoVO selectConnectiontItemInfo(connectionInfoVO vo) throws Exception{
		return dao.selectConnectiontItemInfo(vo);
	}
	
	public List<ProductInfoVO> selectItemList(ProductInfoVO vo) throws Exception{
		return dao.selectItemList(vo);
	}
	
	public int insertConnectionItem(connectionItemInfoVO vo) throws Exception{
		return dao.insertConnectionItem(vo);
	}
	
	public int insertConnectioninfo(connectionItemInfoVO vo) throws Exception{
		return dao.insertConnectioninfo(vo);
	}
	
	public String selectMaxCnOrderNo(connectionItemInfoVO vo) throws Exception{
		return dao.selectMaxCnOrderNo(vo);
	}
	
	
}
