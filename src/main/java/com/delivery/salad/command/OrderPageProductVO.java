package com.delivery.salad.command;

public class OrderPageProductVO {
	
	/** 뷰로부터 전달받을 값 */
	public int productNum;
	
	public int productCount;
	
	/** DB 에서 꺼내올 값 */
	public String productNameString;
	
	public int productPrice;
	
	
	/** 만들어 줄 값 */
	public int totalPrice;


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


	public String getProductNameString() {
		return productNameString;
	}


	public void setProductNameString(String productNameString) {
		this.productNameString = productNameString;
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
		this.totalPrice = this.productPrice*this.productCount;
	}


	@Override
	public String toString() {
		return "OrderPageProductVO [productNum=" + productNum + ", productCount=" + productCount
				+ ", productNameString=" + productNameString + ", productPrice=" + productPrice + ", totalPrice="
				+ totalPrice + "]";
	}

}
