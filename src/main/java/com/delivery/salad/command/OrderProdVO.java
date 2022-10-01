package com.delivery.salad.command;

/**
 
  CREATE TABLE `ORDERPROD` (
 	`ORDERPRODUCTNUM` INT auto_increment primary key, //ORDERPROD 테이블 기본키 
 	`ORDERNUM` String, // Order 테이블 기본키 
 	`PRODUCTNUM` INT, // product 테이블 기본키 productNum
 	`PRODUCTCOUNT`  INT not null, // 주문한 상품의 수량
    `PRODUCTPRICE` INT not null // 주문한 상품 한개으 가격 
    
 );
 
 */

public class OrderProdVO {
	
	
	/** 주문번호 (랜덤 숫자 문자열로 디밸롭 해보기 )*/
	public String orderNum;
	
	/** ORDERPROD 기본키 */
	public int orderProductNum;
	
	/** 화면에서 전달 받을 값 */
	public int productNum; // 상품번호 
	public int productCount; //상품 주문 수량 
	
	
	/** db에서 꺼내올 값 */
	public int productPrice;//상품 1개의 가격 
	
	
	
	
	/** 만들어 줄 값 (db에 존재하지 않는 값) */
	
	public String productName;//상품명 
	
	public int totalPrice; // 총금액 

	public String getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}

	public int getOrderProductNum() {
		return orderProductNum;
	}

	public void setOrderProductNum(int orderProductNum) {
		this.orderProductNum = orderProductNum;
	}

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

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "OrderProdVO [orderNum=" + orderNum + ", orderProductNum=" + orderProductNum + ", productNum="
				+ productNum + ", productCount=" + productCount + ", productPrice=" + productPrice + ", productName="
				+ productName + ", totalPrice=" + totalPrice + "]";
	}

	public void inintTotal() {
		this.totalPrice = this.productCount*this.productCount;
	}
	
	
	

}
