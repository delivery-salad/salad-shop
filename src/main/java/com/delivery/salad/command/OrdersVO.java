package com.delivery.salad.command;

import java.sql.Timestamp;

/*
글번호 
글 제목 
글내용 
날짜
아이디 

Order
상품주문번호(orderproductNum pk) 
오더정보번호 (orderInfoNum오더테이블 Pk : 배송인정보) 

상품번호 
상품명
상품수량 
상품가격 



CREATE TABLE `ORDERS` (
 	`ORDERNUM` INT	auto_increment primary key,
 	`ORDERPRODNUM` int not null,
 	`USEREMAIL` varchar(50), 
 	`ORDERNAME` varchar(100),
 	`ORDERPHONE` int not null,
 	`ORDEREMAIL` VARCHAR(200) not null,
 	`ORDERADDRESS2` varchar(200) not null,
 	`ORDERADDRESS3` varchar(200) not null,
 	`ORDERSTATE` varchar(100), 
 	`DELIVERYCOST` int not null, 
    `ORDERDATE` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `PRODUCTNUM` int not null,
    `ORDERCOUNT` int not null,
    `PRODUCTNAME` int not null,
    `PRODUCTPRICE` int not null,
    `TOTALPRICE` int,
    `DELIVERYCOMMENT` int  
 );



*/

public class OrdersVO {
	
	//주문번호 order테이블 Pk 
	public int orderNum;
	
	//OrderProd 테이블 Pk (상품 1개의 정보가 있는 테이블)
//	public int orderProdNum;
	
	//주문자 정보 
	public String userEmail;
	
	public String orderName;
	
	public int orderPhone;
	
	public String orderEmail;
	

	public String orderAddress1;
	
	public String orderAddress2;
	
	public String orderAddress3;
	
	public String orderState;
	
	public int deliveryCost;
	
	public Timestamp orderDate;
	
	
	//사용자가 선택한 수량 
	public int orderCount;
	
	
	
	//주문상품 내역 
	
	public int productNum;
	
	public int productCount;
	
	public String productName;
	
	public int productPrice;
	
	public int totalPrice;
	
	public String deliveryComment;

	public int getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getOrderName() {
		return orderName;
	}

	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}

	public int getOrderPhone() {
		return orderPhone;
	}

	public void setOrderPhone(int orderPhone) {
		this.orderPhone = orderPhone;
	}

	public String getOrderEmail() {
		return orderEmail;
	}

	public void setOrderEmail(String orderEmail) {
		this.orderEmail = orderEmail;
	}

	public String getOrderAddress1() {
		return orderAddress1;
	}

	public void setOrderAddress1(String orderAddress1) {
		this.orderAddress1 = orderAddress1;
	}

	public String getOrderAddress2() {
		return orderAddress2;
	}

	public void setOrderAddress2(String orderAddress2) {
		this.orderAddress2 = orderAddress2;
	}

	public String getOrderAddress3() {
		return orderAddress3;
	}

	public void setOrderAddress3(String orderAddress3) {
		this.orderAddress3 = orderAddress3;
	}

	public String getOrderState() {
		return orderState;
	}

	public void setOrderState(String orderState) {
		this.orderState = orderState;
	}

	public int getDeliveryCost() {
		return deliveryCost;
	}

	public void setDeliveryCost(int deliveryCost) {
		this.deliveryCost = deliveryCost;
	}

	public Timestamp getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}

	public int getOrderCount() {
		return orderCount;
	}

	public void setOrderCount(int orderCount) {
		this.orderCount = orderCount;
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

	public String getDeliveryComment() {
		return deliveryComment;
	}

	public void setDeliveryComment(String deliveryComment) {
		this.deliveryComment = deliveryComment;
	}

	@Override
	public String toString() {
		return "OrderVO [orderNum=" + orderNum + ", userEmail=" + userEmail + ", orderName=" + orderName
				+ ", orderPhone=" + orderPhone + ", orderEmail=" + orderEmail + ", orderAddress1=" + orderAddress1
				+ ", orderAddress2=" + orderAddress2 + ", orderAddress3=" + orderAddress3 + ", orderState=" + orderState
				+ ", deliveryCost=" + deliveryCost + ", orderDate=" + orderDate + ", orderCount=" + orderCount
				+ ", productNum=" + productNum + ", productCount=" + productCount + ", productName=" + productName
				+ ", productPrice=" + productPrice + ", totalPrice=" + totalPrice + ", deliveryComment="
				+ deliveryComment + "]";
	}

	
	
	


	

}
