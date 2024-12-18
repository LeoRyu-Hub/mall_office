package com.office.vo.connection;

import java.util.List;

public class connectionInfoVO {
	
	private String connectionCode;
	private String connectionName;
	private String ceoName;
	private String connectionNumber;
	private String chargeName;
	private String chargeNumber;
	private String chargeEmail;
	private String connectionSt;
	private String regDt;
	private String cnOrderDt;
	private String cnOrderNo;
	private String productCode;
	private String productName;
	private String cnOrderQta;
	private String cnOrderPrice;
	private String cnorderSt;
	private String receiveDt;
	private String crudType;
	private List<connectionInfoVO> connectionItemList;
	
	public List<connectionInfoVO> getConnectionItemList() {
		return connectionItemList;
	}
	public void setConnectionItemList(List<connectionInfoVO> list) {
		this.connectionItemList = list;
	}
	public String getCnOrderDt() {
		return cnOrderDt;
	}
	public void setCnOrderDt(String cnOrderDt) {
		this.cnOrderDt = cnOrderDt;
	}
	public String getCnOrderNo() {
		return cnOrderNo;
	}
	public void setCnOrderNo(String cnOrderNo) {
		this.cnOrderNo = cnOrderNo;
	}
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getCnOrderQta() {
		return cnOrderQta;
	}
	public void setCnOrderQta(String cnOrderQta) {
		this.cnOrderQta = cnOrderQta;
	}
	public String getCnOrderPrice() {
		return cnOrderPrice;
	}
	public void setCnOrderPrice(String cnOrderPrice) {
		this.cnOrderPrice = cnOrderPrice;
	}
	public String getCnorderSt() {
		return cnorderSt;
	}
	public void setCnorderSt(String cnorderSt) {
		this.cnorderSt = cnorderSt;
	}
	public String getReceiveDt() {
		return receiveDt;
	}
	public void setReceiveDt(String receiveDt) {
		this.receiveDt = receiveDt;
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

	public String getCeoName() {
		return ceoName;
	}
	public void setCeoName(String ceoName) {
		this.ceoName = ceoName;
	}
	public String getConnectionNumber() {
		return connectionNumber;
	}
	public void setConnectionNumber(String connectionNumber) {
		this.connectionNumber = connectionNumber;
	}
	public String getChargeName() {
		return chargeName;
	}
	public void setChargeName(String chargeName) {
		this.chargeName = chargeName;
	}
	public String getChargeNumber() {
		return chargeNumber;
	}
	public void setChargeNumber(String chargeNumber) {
		this.chargeNumber = chargeNumber;
	}
	public String getChargeEmail() {
		return chargeEmail;
	}
	public void setChargeEmail(String chargeEmail) {
		this.chargeEmail = chargeEmail;
	}
	public String getConnectionSt() {
		return connectionSt;
	}
	public void setConnectionSt(String connectionSt) {
		this.connectionSt = connectionSt;
	}
	
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	
	public String getCrudType() {
		return crudType;
	}
	public void setCrudType(String crudType) {
		this.crudType = crudType;
	}

}
