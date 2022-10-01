package com.delivery.salad.command;

import java.util.List;

public class OrderPageVO {
	
	public List<OrderPageProductVO> ordersList;
	

	public List<OrderPageProductVO> getOrdersList() {
		return ordersList;
	}

	public void setOrdersList(List<OrderPageProductVO> ordersList) {
		this.ordersList = ordersList;
	}

	@Override
	public String toString() {
		return "OrderPageVO [ordersList=" + ordersList + "]";
	}

	
}
