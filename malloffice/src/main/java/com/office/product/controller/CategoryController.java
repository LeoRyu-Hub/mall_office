package com.office.product.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.office.product.service.CategoryService;
import com.office.vo.product.CategoryInfoVO;


@Controller
public class CategoryController {
	
	@Autowired
	CategoryService service;
	
	@RequestMapping("/category/list")
	public String list() throws Exception{
		return "product/category_list";
	}
	
	@RequestMapping("/category/info")
	@ResponseBody
	public List<CategoryInfoVO> getnotice(@ModelAttribute CategoryInfoVO vo)
			throws Exception{
		
		List<CategoryInfoVO> list = service.selectCategoryInfo(vo);
		return list;
	}
	
	@RequestMapping("/category/save") //이 값을 화면에 던져주어야 하기 때문에 model필요??
	@ResponseBody
	public boolean save(@ModelAttribute CategoryInfoVO vo)
			throws Exception{
		
		if(vo.getDeCategory() !=null && !vo.getDeCategory().equals("")
		&& vo.getJoCategory() !=null && !vo.getJoCategory().equals("")) {
			vo.setCategoryLevel("3");
			vo.setUpperCategoryCode(vo.getJoCategory());
		}else if(vo.getDeCategory() !=null && !vo.getDeCategory().equals("")) {
			vo.setCategoryLevel("2");
			vo.setUpperCategoryCode(vo.getDeCategory());
		}else {
			vo.setCategoryLevel("1");
			vo.setUpperCategoryCode("");
		}
		   
		
		String newCategory = service.selectMaxCategoryCode(vo);
		vo.setCategoryCode(newCategory);
		int cnt = service.saveCategory(vo);
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}
	
	


}
