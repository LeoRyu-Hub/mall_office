package com.office.common.service;

import org.springframework.stereotype.Service;

import com.office.util.FileUploadUtil;
import com.office.util.SessionUtil;
import com.office.vo.common.FileVO;

@Service
public class FileService {

	
	public FileVO createFile(FileVO vo) throws Exception {

		String fileCd="", fileExt="";
		
		if (!vo.getFile().getOriginalFilename().isEmpty()) {
			
			fileCd = SessionUtil.getUuid();
			fileExt = vo.getFile().getOriginalFilename().substring(vo.getFile().getOriginalFilename().lastIndexOf("."),vo.getFile().getOriginalFilename().length());
			
			vo.setFileCd(fileCd);
			vo.setFileNm(fileCd+fileExt);
			vo.setOriginFileNm(vo.getFile().getOriginalFilename());
			
			//File upload
			FileUploadUtil.uploadFormFile(vo);
			
		}
		
		return vo;
	}
	
	private static String StringReplace(String str) {
    	String str1 = str.substring(0,str.lastIndexOf('.'));
    	String str2 = str.substring(str.lastIndexOf('.'),str.length());	//확장자
    	String match = "[@%.']";
        str =str1.replaceAll(match, "")+str2;
        return str;
    }
	
	
	
}
