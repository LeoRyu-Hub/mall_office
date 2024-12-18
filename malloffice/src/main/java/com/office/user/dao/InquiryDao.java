package com.office.user.dao;

import java.util.List;

import org.springframework.stereotype.Repository;


import com.office.vo.user.UserInquiryVO;

@Repository
public interface InquiryDao {
	public List<UserInquiryVO> selectInquryList(UserInquiryVO vo) throws Exception;
	public UserInquiryVO selectInquiry(UserInquiryVO vo) throws Exception;
	public int updateInquiry(UserInquiryVO vo) throws Exception;
	
}
