package com.office.user.vo;

import java.util.List;

import com.office.vo.common.PageVO;
import com.office.vo.user.UserInfoVO;

public class UserVO extends PageVO {

	private List<UserInfoVO> userlist;

	public List<UserInfoVO> getUserlist() {
		return userlist;
	}

	public void setUserlist(List<UserInfoVO> userlist) {
		this.userlist = userlist;
	}
	
	
}
