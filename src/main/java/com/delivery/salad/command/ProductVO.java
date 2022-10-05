package com.delivery.salad.command;

import java.util.Date;


/*
create table PRODUCT(
	PRODUCTNUM int(255) auto_increment primary key,
	PRODUCTPRICE int(255),
    PRODUCTCOUNT int(255),
    PRODUCTNAME varchar(1000),
    PRODUCTCONTENT varchar(1000),
    PROUDCTREGISTDATE datetime default current_timestamp,
    PRODUCTUPDATEDATE datetime default current_timestamp,
    PRODUCTIMGURL varchar(1000),
    PRODUCTIMGNAME varchar(1000),
    PRODUCTCONTENTIMGURL varchar(1000),
    PRODUCTCONTENTIMGNAME varchar(1000)
);

select * from PRODUCT;
drop table PRODUCT; 
 */
public class ProductVO {

	public int productNum; // 상품 기본키(auto_increment)

	public int productPrice; // 상품 가격
	public String productName; // 상품 이름
	
	//상품 상세 클릭 할 시 세부  이미지를 위한 변수
	public String productContent; // 상품 내용
	public String productContentImgUrl;
	public String productContentImgName;
	
	
	
	//List화면에서 보여지는 이미지를 위한 변수 
	public String productImgUrl;
	public String productImgName;
	
	
	public int productCount; // 상품 개수
	
	public Date productRegistDate; // 상품 등록일
	public Date productUpdateDate; // 상품 수정일
	
	
	
	
	public String getProductContentImgUrl() {
		return productContentImgUrl;
	}

	public void setProductContentImgUrl(String productContentImgUrl) {
		this.productContentImgUrl = productContentImgUrl;
	}



	public String getProductContentImgName() {
		return productContentImgName;
	}

	public void setProductContentImgName(String productContentImgName) {
		this.productContentImgName = productContentImgName;
	}

	public String getProductImgUrl() {
		return productImgUrl;
	}

	public void setProductImgUrl(String productImgUrl) {
		this.productImgUrl = productImgUrl;
	}

	public String getProductImgName() {
		return productImgName;
	}

	public void setProductImgName(String productImgName) {
		this.productImgName = productImgName;
	}


	public int getProductNum() {
		return productNum;
	}

	public void setProductNum(int productNum) {
		this.productNum = productNum;
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
	
	public String getProductContent() {
		return productContent;
	}

	public void setProductContent(String productContent) {
		this.productContent = productContent;
	}

	public int getProductCount() {
		return productCount;
	}

	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}

	public Date getProductRegistDate() {
		return productRegistDate;
	}

	public void setProductRegistDate(Date productRegistDate) {
		this.productRegistDate = productRegistDate;
	}

	public Date getProductUpdateDate() {
		return productUpdateDate;
	}

	public void setProductUpdateDate(Date productUpdateDate) {
		this.productUpdateDate = productUpdateDate;
	}

}
