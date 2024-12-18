package com.office.connection.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.office.vo.connection.connectionInfoVO;
import com.office.vo.connection.connectionItemInfoVO;
import com.office.vo.product.ProductInfoVO;

@Repository
public interface connectionDao {
	public List<connectionInfoVO> selectConnectiontList(connectionInfoVO vo) throws Exception;
	public connectionInfoVO selectConnectiontInfo(connectionInfoVO vo) throws Exception;
	public int updateConnection(connectionInfoVO vo) throws Exception;
	public int saveConnection(connectionInfoVO vo) throws Exception;
	public List<connectionInfoVO> selectConnectiontItemList(connectionInfoVO vo) throws Exception;
	public connectionInfoVO selectConnectiontItemInfo(connectionInfoVO vo) throws Exception;
	public List<ProductInfoVO> selectItemList(ProductInfoVO vo) throws Exception;
	public int insertConnectionItem(connectionItemInfoVO vo) throws Exception;
	public String selectMaxCnOrderNo(connectionItemInfoVO vo) throws Exception;
	public int insertConnectioninfo(connectionItemInfoVO vo) throws Exception;
}
