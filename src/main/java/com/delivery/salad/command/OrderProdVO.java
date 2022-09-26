package com.delivery.salad.command;

/**
 
  CREATE TABLE `ORDERPROD` (
 	`ORDERPRODUCTNUM` INT auto_increment primary key,
 	`ORDERNUM` INT, // Order 테이블 기본키 
 	`PRODUCTNUM` INT, // product 테이블 기본키 productNum
 	`PRODUCTCOUNT`  INT not null, // 주문한 상품의 수량
    `PRODUCTPRICE` INT not null // 주문한 상품 한개으 가격 
    
 );
 
 */

public class OrderProdVO {
	
	/** 화면에서 전달 받을 값 */
	public int productNum; // 상품번호 
	public int productCount; //상품 수량 
	
	
	/** db에서 꺼내올 값 */
	public String productName;//상품명 
	public int productPrice;//상품 가격
	
	
	/** 만들어 줄 값 */
	
	public int totalPrice; // 총금액 


	public int getProductNum() {
		return productNum;
	}


	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}


	public int getProductCount() {
		return productCount;
	}


	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}


	public String getProductName() {
		return productName;
	}


	public void setProductName(String productName) {
		this.productName = productName;
	}


	public int getProductPrice() {
		return productPrice;
	}


	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}


	public int getTotalPrice() {
		return totalPrice;
	}


	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	
	public void initTotalPrice() {
		this.totalPrice = this.productPrice * this.productCount;
	}


	@Override
	public String toString() {
		return "OrderProdVO [productNum=" + productNum + ", productCount=" + productCount + ", productName="
				+ productName + ", productPrice=" + productPrice + ", totalPrice=" + totalPrice + "]";
	}
	
	
	
	

}
