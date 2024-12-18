package com.office.manager.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.office.vo.manager.managerInfoVO;

@Repository
public interface managerDao {
	
	public List<managerInfoVO> selectManagertList(managerInfoVO vo) throws Exception;
	public managerInfoVO selectManagerInfo(@ModelAttribute managerInfoVO vo) throws Exception;
	public int insertManagerInfo(managerInfoVO vo) throws Exception;
	public managerInfoVO selectManager(managerInfoVO vo) throws Exception;
}
