package com.office.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.office.user.dao.UserDao;
import com.office.vo.order.orderInfoVO;
import com.office.vo.user.UserInfoVO;

@Service
public class UserService {
	
	@Autowired
	UserDao dao;
	
	
	public List<UserInfoVO> selectUserInfoList(UserInfoVO vo) throws Exception{
		return dao.selectUserInfoList(vo);
	}
	
	public UserInfoVO selectUserInfo(UserInfoVO vo) throws Exception{
		return dao.selectUserInfo(vo);
	}
	
	public List<orderInfoVO> selectOrderList(UserInfoVO vo) throws Exception{
		return dao.selectOrderList(vo);
	}
	
	public int selectUserInfoCount(UserInfoVO vo) throws Exception{
		return dao.selectUserInfoCount(vo);
	}

}
