package com.office.product.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.office.vo.product.CategoryInfoVO;
import com.office.vo.product.ProductInfoVO;

@Repository
public interface ProductDao {
	public List<ProductInfoVO> selectProductInfoList(ProductInfoVO vo) throws Exception;
	public ProductInfoVO selectProductInfo(ProductInfoVO vo) throws Exception;
	public int updateProduct(ProductInfoVO vo) throws Exception;
	public List<CategoryInfoVO> selectCategory(ProductInfoVO vo) throws Exception;
	public int insertProduct(ProductInfoVO vo) throws Exception;
	public List<CategoryInfoVO> getCategory(CategoryInfoVO vo) throws Exception;
	public int selectProductPageCnt(ProductInfoVO vo) throws Exception;
}
