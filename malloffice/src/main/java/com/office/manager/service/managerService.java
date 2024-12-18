package com.office.manager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.office.manager.dao.managerDao;
import com.office.vo.manager.managerInfoVO;

@Service
public class managerService {
	
	@Autowired
	managerDao dao;
	
	public List<managerInfoVO> selectManagertList(managerInfoVO vo) throws Exception{
		return dao.selectManagertList(vo);
	}
	
	public managerInfoVO selectManagerInfo(@ModelAttribute managerInfoVO vo) throws Exception{
		return dao.selectManagerInfo(vo);
	}
	
	public int insertManagerInfo(managerInfoVO vo) throws Exception{
		return dao.insertManagerInfo(vo);
	}
	
	public managerInfoVO selectManager(managerInfoVO vo) throws Exception{
		return dao.selectManager(vo);
	}
}
