package com.delivery.salad.product;

import java.util.Random;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.delivery.salad.command.ProductVO;
import com.delivery.salad.product.mapper.IProductMapper;
import com.delivery.salad.product.service.IProductService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ProductRegistTest {
	
	@Autowired
	private IProductMapper productMapperTest;
	
	
	@Test
	public void productRegistTest() {
		ProductVO vo= new ProductVO();
		for(int i=1;i<=20;i++) {
			vo.setProductPrice(10000+i);
			vo.setProductCount(1000+i);
			vo.setProductName(i+"번째 상품 이름");
			vo.setProductContent(i+"번째 상품의 간단한 내용입니다");
			
			productMapperTest.productRegist(vo);
			
		}
		
		
	}

}
