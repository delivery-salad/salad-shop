package com.delivery.salad.command;

import java.util.Date;

/*
  create table PRODUCTQNA(
      QNANUM int(100) primary KEY auto_increment,
      QNAWRITER varchar(100),
      QNAPW varchar(100),
      QNATITLE varchar(100),
      QNACONTENT varchar(1000),
	  QNAREGISTDATE datetime default current_timestamp,
      QNAUPDATEDATE datetime default current_timestamp
);
 */
public class QnAVO {

	
	private int qnaNum;
	private String qnaWriter;
	private String qnaPw;
	private String qnaTitle;
	private String qnaContent;
	private Date qnaRegistDate; // qna 등록일
	private Date qnaUpdateDate; // qna 수정일
	private int productNum;
	

	public Date getQnaRegistDate() {
		return qnaRegistDate;
	}
	public void setQnaRegistDate(Date qnaRegistDate) {
		this.qnaRegistDate = qnaRegistDate;
	}
	public Date getQnaUpdateDate() {
		return qnaUpdateDate;
	}
	public void setQnaUpdateDate(Date qnaUpdateDate) {
		this.qnaUpdateDate = qnaUpdateDate;
	}
	public int getProductNum() {
		return productNum;
	}
	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}
	public int getQnaNum() {
		return qnaNum;
	}
	public void setQnaNum(int qnaNum) {
		this.qnaNum = qnaNum;
	}


	public String getQnaWriter() {
		return qnaWriter;
	}
	public void setQnaWriter(String qnaWriter) {
		this.qnaWriter = qnaWriter;
	}
	public String getQnaPw() {
		return qnaPw;
	}
	public void setQnaPw(String qnaPw) {
		this.qnaPw = qnaPw;
	}
	public String getQnaTitle() {
		return qnaTitle;
	}
	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}
	public String getQnaContent() {
		return qnaContent;
	}
	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}
	

	
}
