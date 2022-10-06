package com.delivery.salad.product.service;

import java.util.List;

import com.delivery.salad.command.ProductVO;
import com.delivery.salad.command.QnAVO;
import com.delivery.salad.util.PageVO;

public interface IProductService {
	
	//상품 전체 개수 조회
	int productTotalCount();
	
	//상품 전체 조회
	List<ProductVO> productList(PageVO vo);
	
	//상품 상제 조회
	ProductVO productSelect(int productNum);
	
	// 상품 등록
	int productRegist(ProductVO vo);
	
	//등록된 상품 수정
	int productModify(ProductVO vo);
	
	//상품 삭제
	int productDelte(int productNum);
	
	int productQnATotalCount();

	List<QnAVO> productQnAList(PageVO vo);

	QnAVO productQnASelect(int productQnANum);

	int productQnARegist(QnAVO vo);

	int productQnAModify(QnAVO vo);

	int productQnADelte(int productQnANum);

}
