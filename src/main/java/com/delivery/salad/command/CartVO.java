package com.delivery.salad.command;

import java.util.List;

/**
 
 DROP TABLE IF EXISTS `CART`;
 
 CREATE TABLE `CART` (
	`CARTNUM`	INT	auto_increment primary key,
	`USERID`	VARCHAR(50)	NOT NULL,
	`PRODUCTNUM`	INT	NOT NULL,
	`PRODUCTCOUNT`	INT NOT NULL
);
 
 */

public class CartVO {
	
	public int cartNum;
	public String userId;
	public int productNum;
	public int productCount;
	
	/** product */
	public String productName;
	public int productPrice;
	
	/** 추가 */
	public int totalPrice;
	
	
	
	

	public int getCartNum() {
		return cartNum;
	}

	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
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

	public void initTotal() {
		this.totalPrice = this.productCount * this.productPrice;
	}

	@Override
	public String toString() {
		return "CartVO [cartNum=" + cartNum + ", userId=" + userId + ", productNum=" + productNum + ", productCount="
				+ productCount + ", productName=" + productName + ", productPrice=" + productPrice + ", totalPrice="
				+ totalPrice + "]";
	}
	
	
	
	
	
	
	
	

}
