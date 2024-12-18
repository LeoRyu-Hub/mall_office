package com.office.product.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.office.product.dao.CategoryDao;
import com.office.vo.product.CategoryInfoVO;


@Service
public class CategoryService {
	
	@Autowired
	CategoryDao dao;
	
	public List<CategoryInfoVO> selectCategoryInfo(CategoryInfoVO vo) throws Exception{
		return dao.selectCategoryInfo(vo);
	}
	
	public int saveCategory(CategoryInfoVO vo) throws Exception{
		return dao.saveCategory(vo);
	}
	
	public String selectMaxCategoryCode(CategoryInfoVO vo) throws Exception{
		return dao.selectMaxCategoryCode(vo);
	}

}
