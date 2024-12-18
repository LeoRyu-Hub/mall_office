package com.office.product.dao;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.office.vo.product.CategoryInfoVO;


@Repository
public interface CategoryDao {
	public List<CategoryInfoVO> selectCategoryInfo(CategoryInfoVO vo) throws Exception;
	public int saveCategory(CategoryInfoVO vo) throws Exception;
	public String selectMaxCategoryCode(CategoryInfoVO vo) throws Exception;
	

}
