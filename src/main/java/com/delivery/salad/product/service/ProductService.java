package com.delivery.salad.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.delivery.salad.command.ProductVO;
import com.delivery.salad.command.QnAVO;
import com.delivery.salad.product.mapper.IProductMapper;
import com.delivery.salad.util.PageVO;

@Service
public class ProductService  implements IProductService{

	//상품 CRUD를 위한 mapper 
	@Autowired
	private IProductMapper productMapper;
	
	//상품 전체 개수 조회
	@Override
	public int productTotalCount() {
		return productMapper.productTotalCount();
	}
	
	//상품 전체 조회 
	@Override
	public List<ProductVO> productList(PageVO vo) {
		return productMapper.productList(vo);
	}
	
	//상품 상세 조회 
	@Override
	public ProductVO productSelect(int productNum) {
		return productMapper.productSelect(productNum);
	}
	
	//상품 등록
	@Override
	public int productRegist(ProductVO vo) {

		return productMapper.productRegist(vo);
	}

	//등록된 상품 수정
	@Override
	public int productModify(ProductVO vo) {
		return productMapper.productModify(vo);
	}

	@Override
	public int productDelte(int productNum) {
		return productMapper.productDelte(productNum);
	}

	@Override
	public int productQnATotalCount() {
		return productMapper.productQnATotalCount();
	}

	@Override
	public List<QnAVO> productQnAList(PageVO vo) {
		return productMapper.productQnAList(vo);
	}

	@Override
	public int productQnARegist(QnAVO vo) {
		return productMapper.productQnARegist(vo);
	}

	@Override
	public int productQnAModify(QnAVO vo) {
		return productMapper.productQnAModify(vo);
	}

	@Override
	public int productQnADelte(int productQnANum) {
		return productMapper.productQnADelte(productQnANum);
	}

	@Override
	public QnAVO productQnASelect(int productQnANum) {
		return productMapper.productQnASelect(productQnANum);
	}







}
