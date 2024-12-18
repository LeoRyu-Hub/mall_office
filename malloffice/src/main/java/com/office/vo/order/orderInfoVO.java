package com.office.vo.order;

import java.util.List;

import com.office.vo.product.CategoryInfoVO;
import com.office.vo.product.ProductInfoVO;

public class orderInfoVO {
	
	private String orderNo;
	private String userId;
	private String orderName;
	private String orderPhone;
	private String receiveName;
	private String receivePhone;
	private String orderAddr;
	private String paymentMethod;
	private int paymentAmount;
	private String orderDt;
	private String orderSt;
	private String request;
	private String productName;
	private String newSt;
	private int orderQta;
	private int orderPrice;
	
	
	
	public int getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}
	private List<ProductInfoVO> orderProductList;
	
	public int getOrderQta() {
		return orderQta;
	}
	public void setOrderQta(int orderQta) {
		this.orderQta = orderQta;
	}
	public List<ProductInfoVO> getOrderProductList() {
		return orderProductList;
	}
	public void setOrderProductList(List<ProductInfoVO> list) {
		this.orderProductList = list;
	}
	
	public String getNewSt() {
		return newSt;
	}
	public void setNewSt(String newSt) {
		this.newSt = newSt;
	}
	private String[] orderNoArry;
	
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getOrderName() {
		return orderName;
	}
	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}
	public String getOrderPhone() {
		return orderPhone;
	}
	public void setOrderPhone(String orderPhone) {
		this.orderPhone = orderPhone;
	}
	public String getReceiveName() {
		return receiveName;
	}
	public void setReceiveName(String receiveName) {
		this.receiveName = receiveName;
	}
	public String getReceivePhone() {
		return receivePhone;
	}
	public void setReceivePhone(String receivePhone) {
		this.receivePhone = receivePhone;
	}
	public String getOrderAddr() {
		return orderAddr;
	}
	public void setOrderAddr(String orderAddr) {
		this.orderAddr = orderAddr;
	}
	public String getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	public int getPaymentAmount() {
		return paymentAmount;
	}
	public void setPaymentAmount(int paymentAmount) {
		this.paymentAmount = paymentAmount;
	}
	public String getOrderDt() {
		return orderDt;
	}
	public void setOrderDt(String orderDt) {
		this.orderDt = orderDt;
	}
	public String getOrderSt() {
		return orderSt;
	}
	public void setOrderSt(String orderSt) {
		this.orderSt = orderSt;
	}
	public String getRequest() {
		return request;
	}
	public void setRequest(String request) {
		this.request = request;
	}
	public String[] getOrderNoArry() {
		return orderNoArry;
	}
	public void setOrderNoArry(String[] orderNoArry) {
		this.orderNoArry = orderNoArry;
	}

	
}
