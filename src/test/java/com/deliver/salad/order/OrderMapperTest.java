package com.deliver.salad.order;

import static org.junit.Assert.*;

import org.apache.ibatis.annotations.Mapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.delivery.salad.command.OrderProdVO;
import com.delivery.salad.order.mapper.IOrderMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations ={"file:src/main/webapp/WEB-INF/spring/root-context.xml"} )
public class OrderMapperTest {
	
	@Autowired
	private IOrderMapper mapper;

	@Test
	public void getOrderInfoTest() {
		
		OrderProdVO orderInfo =mapper.getOrderInfo(1);
		System.out.println("결과: " + orderInfo);
		
	}

}
