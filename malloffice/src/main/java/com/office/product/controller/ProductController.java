package com.office.product.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.office.common.service.FileService;
import com.office.product.service.ProductService;
import com.office.util.Constant;
import com.office.vo.common.FileVO;
import com.office.vo.product.CategoryInfoVO;
import com.office.vo.product.ProductInfoVO;

@Controller
public class ProductController {
	
	@Autowired
	ProductService service;
	
	@Autowired
	FileService fileservice;
	
	@RequestMapping("/product/list")
	public String list() throws Exception{
		return "product/product_list";
	}
	
	@RequestMapping("/product/search")
	@ResponseBody
	public ProductInfoVO getnotice(@ModelAttribute ProductInfoVO vo) throws Exception{
		
		int totalpage = service.selectProductPageCnt(vo);
		
		List<ProductInfoVO> list = service.selectProductInfoList(vo);
		
		ProductInfoVO productvo = new ProductInfoVO();
		productvo.setProductlist(list);
		productvo.setTotal(totalpage);
		productvo.setStartPage(vo.getStartPage());
		productvo.setCurrentPage(vo.getCurrentPage());
		
		return productvo;
	}
	
	@RequestMapping("/get/category")
	@ResponseBody
	public List<CategoryInfoVO> getnotice(@ModelAttribute CategoryInfoVO vo)
			throws Exception{
		
		List<CategoryInfoVO> list = service.getCategory(vo);
		return list;
	}
	

	
	@RequestMapping("/product/view") //attribute 는 화면에서 던진 값을 받을 때, model 은 값을 다시 화면으로 던질 때
	public String view(@ModelAttribute ProductInfoVO vo, Model model) throws Exception{
		model.addAttribute("productCode",vo.getProductCode());
	
		return "product/product_view";
	}
	
	@RequestMapping("/product/getInfo")
	@ResponseBody
	public ProductInfoVO getInfo(@ModelAttribute ProductInfoVO vo)
			throws Exception{
		
		vo = service.selectProductInfo(vo);
		
		List<CategoryInfoVO> list = service.selectCategory(vo);
		
		vo.setCategorylist(list);
				
		return vo;
	}
	
	@RequestMapping("/product/update")
	@ResponseBody
	public boolean update(@ModelAttribute ProductInfoVO vo) throws Exception{
		
		if(vo.getThumbnailFile()!=null) {
			
			FileVO fvo = new FileVO();
			fvo.setFile(vo.getThumbnailFile());
			fvo.setOriginPath(Constant.UPLOAD_PATH);
			fvo = fileservice.createFile(fvo);
			vo.setThumbnail(Constant.IMAGE_PATH + "/"+ fvo.getFileNm());
		}
		
		int cnt = service.updateProduct(vo);
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}
	
	@RequestMapping("/product/reg")
	public String reg() throws Exception{
		return "product/product_reg";
	}
	
	@RequestMapping("/product/save")
	@ResponseBody
	public boolean save(@ModelAttribute ProductInfoVO vo) throws Exception{
		
		if(vo.getThumbnailFile()!=null) {
			
			FileVO fvo = new FileVO();
			fvo.setFile(vo.getThumbnailFile());
			fvo.setOriginPath(Constant.UPLOAD_PATH);
			fvo = fileservice.createFile(fvo);
	
		}
		
		int cnt = service.insertProduct(vo);
		if(cnt>0) {
			return true;
		}else {
		return false;
		}
	}
	


	
}
