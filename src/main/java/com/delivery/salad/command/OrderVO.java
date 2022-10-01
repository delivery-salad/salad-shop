package com.delivery.salad.command;

import java.sql.Date;
import java.util.List;

/**
 CREATE TABLE `ORDER` (
 	`ORDERNUM` varchar(50) primary key,
 	`ORDERNAME` varchar(50) not null,
	`ORDERPHONE` int,
    `ORDEREMAIL` varchar(100),
 	`USERID` varchar(50), 
 	`ORDERADDRESS1`  varchar(100) not null,
    `ORDERADDRESS2` varchar(100) not null,
    `ORDERADDRESS3` varchar(100) not null,
    `ORDERSTATE` varchar(30) not null,
    `DELIVERYCOST` int not null,
    `ORDERDATE` DATETIME DEFAULT CURRENT_TIMESTAMP
 );
 
 */


public class OrderVO {
	
	/** 주문번호 */
	public String orderNum;
	
	/** 배송인 이름 */
	public String orderName;
	
	/** 회원 아이디 */
	public String userId;
	
	public String orderPhone;
	
	public String orderEmailString;
	
	/** 주소  우편번호, 기본주소, 세부주소 */
	public String orderAddress1;
	public String orderAddress2;
	public String orderAddress3;
	
	/** 주문 상태 */
	public String orderState;
	
	/** 주문한 상품  */
	public List<OrderProdVO> orders;
	
	/** 배송비 */
	public int deliveryCost;
	
	/** 주문 날짜 */
	public Date orderDate;

	
	/** DB에 없는 데이터 */
	/** 모든 상품의 비용   */
	public int orderPrice;
	
	/** 총 비용 (모든 상품의 비용 + 배송비) */
	public int orderFinalPrice;


	public String getOrderNum() {
		return orderNum;
	}


	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}


	public String getOrderName() {
		return orderName;
	}


	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
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


	public List<OrderProdVO> getOrders() {
		return orders;
	}


	public void setOrders(List<OrderProdVO> orders) {
		this.orders = orders;
	}


	public int getDeliveryCost() {
		return deliveryCost;
	}


	public void setDeliveryCost(int deliveryCost) {
		this.deliveryCost = deliveryCost;
	}


	public Date getOrderDate() {
		return orderDate;
	}


	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}


	public int getOrderFinalPrice() {
		return orderFinalPrice;
	}


	public void setOrderFinalPrice(int orderFinalPrice) {
		this.orderFinalPrice = orderFinalPrice;
	}


	@Override
	public String toString() {
		return "OrderVO [orderNum=" + orderNum + ", orderName=" + orderName + ", userId=" + userId + ", orderAddress1="
				+ orderAddress1 + ", orderAddress2=" + orderAddress2 + ", orderAddress3=" + orderAddress3
				+ ", orderState=" + orderState + ", orders=" + orders + ", deliveryCost=" + deliveryCost
				+ ", orderDate=" + orderDate + ", orderFinalPrice=" + orderFinalPrice + "]";
	}
	
	public void getOrderPriceInfo() {
		/** 배송비 */
		
		if(orderPrice >=  30000) {
			deliveryCost = 0;
		}else {
			deliveryCost = 3000;
		}
		
		/** 총 금액 (모든 상품 금액 + 배송비) */
		orderFinalPrice = orderPrice + deliveryCost;
	}

	
	

}
