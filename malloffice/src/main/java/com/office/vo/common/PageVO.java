package com.office.vo.common;

public class PageVO {
	private int total;	//조회된 데이터 총 갯수
	private int countPerPage=5; //페이지당 조회 데이터 수
	private int currentPage=1 ; //현재 페이지번호
	private int startPage ;	//시작 페이지
	private int endPage;	//종료 페이지
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getCountPerPage() {
		return countPerPage;
	}
	public void setCountPerPage(int countPerPage) {
		this.countPerPage = countPerPage;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getStartPage() {
		return currentPage/countPerPage+1;		//시작페이지 계산
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return total/countPerPage+1;			//종료페이지 계산
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	
	
	
}
