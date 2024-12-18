package com.office.vo.user;

import java.util.List;

import com.office.vo.common.PageVO;
import com.office.vo.order.orderInfoVO;

public class UserInfoVO extends PageVO {
	
	private String userId;
	private String userName;
	private String email;
	private String phone;
	private String joinDate;
	private String withdrawYN;
	private String withdrawDate;
	private String reason;
	private String addr;
	private List<orderInfoVO> orderList;
	
	public List<orderInfoVO> getOrderList() {
		return orderList;
	}
	public void setOrderList(List<orderInfoVO> orderList) {
		this.orderList = orderList;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	public String getWithdrawYN() {
		return withdrawYN;
	}
	public void setWithdrawYN(String withdrawYN) {
		this.withdrawYN = withdrawYN;
	}
	public String getWithdrawDate() {
		return withdrawDate;
	}
	public void setWithdrawDate(String withdrawDate) {
		this.withdrawDate = withdrawDate;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}

}
