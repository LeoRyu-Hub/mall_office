package com.office.vo.product;

import java.util.List;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.springframework.web.multipart.MultipartFile;

import com.office.vo.common.PageVO;

public class ProductInfoVO extends PageVO {
	
	@JsonIgnore
	private MultipartFile thumbnailFile;
	
	private String productCode;
	private String categoryCode;
	private String ProductName;
	private int price;
	private int qta;
	private String regDate;
	private String productSt;
	private int originalPrice;
	private String connection;
	private String thumbnail;
	private String productDetail;
	private String categoryName;
	private String upperCategoryName;
	private String deleteYN;
	private String ctRegDate;
	private String decategory;
	private String jocategory;
	private String socategory;
	private int orderQta;
	
	private List<CategoryInfoVO> categorylist;
	
	private List<ProductInfoVO>	productlist;
	
	
	public List<ProductInfoVO> getProductlist() {
		return productlist;
	}
	public void setProductlist(List<ProductInfoVO> productlist) {
		this.productlist = productlist;
	}
	public MultipartFile getThumbnailFile() {
		return thumbnailFile;
	}
	public void setThumbnailFile(MultipartFile thumbnailFile) {
		this.thumbnailFile = thumbnailFile;
	}
	
	public int getOrderQta() {
		return orderQta;
	}
	public void setOrderQta(int orderQta) {
		this.orderQta = orderQta;
	}
	public String getDecategory() {
		return decategory;
	}
	public void setDecategory(String decategory) {
		this.decategory = decategory;
	}
	public String getJocategory() {
		return jocategory;
	}
	public void setJocategory(String jocategory) {
		this.jocategory = jocategory;
	}
	public String getSocategory() {
		return socategory;
	}
	public void setSocategory(String socategory) {
		this.socategory = socategory;
	}
	
	
	
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getUpperCategoryName() {
		return upperCategoryName;
	}
	public void setUpperCategoryName(String upperCategoryName) {
		this.upperCategoryName = upperCategoryName;
	}
	public String getDeleteYN() {
		return deleteYN;
	}
	public void setDeleteYN(String deleteYN) {
		this.deleteYN = deleteYN;
	}
	public String getCtRegDate() {
		return ctRegDate;
	}
	public void setCtRegDate(String ctRegDate) {
		this.ctRegDate = ctRegDate;
	}
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}
	public String getProductName() {
		return ProductName;
	}
	public void setProductName(String productName) {
		ProductName = productName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQta() {
		return qta;
	}
	public void setQta(int qta) {
		this.qta = qta;
	}

	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getProductSt() {
		return productSt;
	}
	public void setProductSt(String productSt) {
		this.productSt = productSt;
	}
	public int getOriginalPrice() {
		return originalPrice;
	}
	public void setOriginalPrice(int originalPrice) {
		this.originalPrice = originalPrice;
	}
	public String getConnection() {
		return connection;
	}
	public void setConnection(String connection) {
		this.connection = connection;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getProductDetail() {
		return productDetail;
	}
	public void setProductDetail(String productDetail) {
		this.productDetail = productDetail;
	}
	public List<CategoryInfoVO> getCategorylist() {
		return categorylist;
	}
	public void setCategorylist(List<CategoryInfoVO> categorylist) {
		this.categorylist = categorylist;
	}

}
