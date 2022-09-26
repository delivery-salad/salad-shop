package com.delivery.salad.command;

import java.util.List;

/**
 CREATE TABLE `ORDER` (
 	`ORDERNUM` INT	auto_increment primary key,
 	`ORDERNAME` varchar(50) not null,
	`ORDERPHONE` int,
    `ORDEREMAIL` varchar(100),
 	`USERID` varchar(50), 
 	`ORDERADDRESS1`  varchar(100) not null,
    `ORDERADDRESS2` varchar(100) not null,
    `ORDERADDRESS3` varchar(100) not null,
    `ORDERSTATE` varchar(30) not null,
    `DELIVERCOST` int not null,
    `ORDERDATE` DATETIME DEFAULT CURRENT_TIMESTAMP
 );
 
 */


public class OrderVO {
	
	public List<OrderProdVO> orders;

	public List<OrderProdVO> getOrders() {
		return orders;
	}

	public void setOrders(List<OrderProdVO> orders) {
		this.orders = orders;
	}

	@Override
	public String toString() {
		return "OrderVO [orders=" + orders + "]";
	}
	
	

}
