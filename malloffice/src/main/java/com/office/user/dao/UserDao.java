package com.office.user.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.office.vo.order.orderInfoVO;
import com.office.vo.user.UserInfoVO;

@Repository
public interface UserDao {
	public List<UserInfoVO> selectUserInfoList(UserInfoVO vo) throws Exception;
	public UserInfoVO selectUserInfo(UserInfoVO vo) throws Exception;
	public List<orderInfoVO> selectOrderList(UserInfoVO vo) throws Exception;
	public int selectUserInfoCount(UserInfoVO vo) throws Exception;
}
