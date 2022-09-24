package com.delivery.salad.product;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.delivery.salad.command.ProductVO;
import com.delivery.salad.product.mapper.IProductMapper;
import com.delivery.salad.product.service.IProductService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring//root-context.xml")
public class ProductRegistTest {
	
	@Autowired
	private IProductMapper productMapperTest;
	
	
	@Test
	public void productRegistTest() {
		ProductVO vo= new ProductVO();
		
		for(int i=1;i<=270;i++) {
			vo.setProductPrice(10000+i);
			vo.setProductCount(1000);
			vo.setProductNum(7777+i);
			vo.setProductContent("경민경민"+i);
			
			productMapperTest.productRegist(vo);
			
		}
		
		
	}

}
