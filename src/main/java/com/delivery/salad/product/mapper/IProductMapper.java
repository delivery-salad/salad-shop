package com.delivery.salad.product.mapper;

import java.util.List;

import com.delivery.salad.command.ProductVO;
import com.delivery.salad.util.PageVO;

public interface IProductMapper {
	
	//상품 전체 개수 조회
	int productTotalCount();
	
	//상품 전체 조회
	List<ProductVO> productList(PageVO vo);
	
	//특정 상품 조회
	ProductVO productSelect(int productNum);
	
	//상품 등록
	int productRegist(ProductVO vo);
	
	//상품 수정
	int productModify(ProductVO vo);
	
	//상품 삭제
	int productDelte(int productNum);
	
	
	
}
