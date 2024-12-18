package com.office.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.office.user.dao.InquiryDao;
import com.office.vo.user.UserInfoVO;
import com.office.vo.user.UserInquiryVO;

@Service
public class InquiryService {
	
	@Autowired
	InquiryDao dao;
	
	public List<UserInquiryVO> selectInquiryList(UserInquiryVO vo) throws Exception{
		return dao.selectInquryList(vo);
	}
	
	public UserInquiryVO selectInquiry(UserInquiryVO vo) throws Exception{
		return dao.selectInquiry(vo);
	}
	
	public int updateInquiry(UserInquiryVO vo) throws Exception{
		return dao.updateInquiry(vo);
	}


}
