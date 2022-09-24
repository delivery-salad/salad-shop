package com.delivery.salad.util;

public class PageVO {


	//사용자가 선택한 페이지 정보를 담을 변수.
	private int pageNum;
	private int countPerPage;
	private int pageStart;
	
	public PageVO() {
		this.pageNum = 1;
		this.countPerPage = 10;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	
	public int getCountPerPage() {
		return countPerPage;
	}
	
	public void setCountPerPage(int countPerPage) {
		this.countPerPage = countPerPage;
	}

	public int getPageStart() {
		return (this.pageNum - 1)*countPerPage;
	}
	
	
}
