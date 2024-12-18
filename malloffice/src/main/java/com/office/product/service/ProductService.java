package com.office.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.office.product.dao.ProductDao;
import com.office.vo.product.CategoryInfoVO;
import com.office.vo.product.ProductInfoVO;

@Service
public class ProductService {
	
	@Autowired
	ProductDao dao;
	
	public List<ProductInfoVO> selectProductInfoList(ProductInfoVO vo) throws Exception{
		return dao.selectProductInfoList(vo);
	}
	
	public ProductInfoVO selectProductInfo(ProductInfoVO vo) throws Exception{
		return dao.selectProductInfo(vo);
	}
	
	public int updateProduct(ProductInfoVO vo) throws Exception{
		return dao.updateProduct(vo);
	}
	
	public List<CategoryInfoVO> selectCategory(ProductInfoVO vo) throws Exception{
		return dao.selectCategory(vo);
	}
	
	public int insertProduct(ProductInfoVO vo) throws Exception{
		return dao.insertProduct(vo);
	}
	
	public List<CategoryInfoVO> getCategory(CategoryInfoVO vo) throws Exception{
		return dao.getCategory(vo);
	}
	
	public int selectProductPageCnt(ProductInfoVO vo) throws Exception{
		return dao.selectProductPageCnt(vo);
	}


}
