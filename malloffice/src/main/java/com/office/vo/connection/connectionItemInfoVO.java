package com.office.vo.connection;

import java.util.List;

import com.office.vo.product.CategoryInfoVO;

public class connectionItemInfoVO {
	
	private String connectionCode;
	private String connectionName;
	private String cnOrderNo;
	private String cnOrderSt;
	private String receiveDt;
	private String productCode;
	private int cnOrderQta;
	private int cnOrderPrice;
	private String productName;
	private String cnOrderDt;
	
	private List<connectionItemInfoVO> connectionItemList;
	
	public List<connectionItemInfoVO> getConnectionItemList() {
		return connectionItemList;
	}
	public void setConnectionItemList(List<connectionItemInfoVO> connectionItemList) {
		this.connectionItemList = connectionItemList;
	}
	
	public String getConnectionCode() {
		return connectionCode;
	}
	public void setConnectionCode(String connectionCode) {
		this.connectionCode = connectionCode;
	}
	public String getConnectionName() {
		return connectionName;
	}
	public void setConnectionName(String connectionName) {
		this.connectionName = connectionName;
	}
	public String getCnOrderNo() {
		return cnOrderNo;
	}
	public void setCnOrderNo(String cnOrderNo) {
		this.cnOrderNo = cnOrderNo;
	}
	public String getCnOrderSt() {
		return cnOrderSt;
	}
	public void setCnOrderSt(String cnOrderSt) {
		this.cnOrderSt = cnOrderSt;
	}
	public String getReceiveDt() {
		return receiveDt;
	}
	public void setReceiveDt(String receiveDt) {
		this.receiveDt = receiveDt;
	}
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public int getCnOrderQta() {
		return cnOrderQta;
	}
	public void setCnOrderQta(int cnOrderQta) {
		this.cnOrderQta = cnOrderQta;
	}
	public int getCnOrderPrice() {
		return cnOrderPrice;
	}
	public void setCnOrderPrice(int cnOrderPrice) {
		this.cnOrderPrice = cnOrderPrice;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getCnOrderDt() {
		return cnOrderDt;
	}
	public void setCnOrderDt(String cnOrderDt) {
		this.cnOrderDt = cnOrderDt;
	}

}
