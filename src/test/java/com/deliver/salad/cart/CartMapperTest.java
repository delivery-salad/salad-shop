package com.deliver.salad.cart;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.delivery.salad.command.CartVO;
import com.delivery.salad.cart.mapper.ICartMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class CartMapperTest {

	@Autowired
	private ICartMapper mapper;
	
	@Test
	public void addCartTest() {
//		for(int i i=0; i<5; i++) {
//		
//		CartVO cart = new CartVO();
//		cart.setUserId("test" + i);
//		cart.setProdNum(i);
//		cart.setQuantity(i);
//		
//		mapper.addCart(cart);
		
		
		String userId = "test123";
		int productNum = 123;
		int productCount = 2;
		
		CartVO cart = new CartVO();
		cart.setUserId(userId);
		cart.setProductNum(productNum);
		cart.setProductCount(productCount);
		
		int result = 2;
		result = mapper.addCart(cart);
		
		System.out.println("결과 : " + result);
		
		
		
		
	}
	
	@Test
	public void deleteCartTest() {
		int cartNum = 2;
		
		mapper.deleteCart(cartNum);
	}
	
	@Test
	public void updateCartTest() {
		int cartNum = 3;
		int productCount = 5;
		
		CartVO cart = new CartVO();
		cart.setCartNum(cartNum);
		cart.setProductCount(productCount);
		
		mapper.updateCart(cart);
		
	}
	
//	@Test
//	public void getCartTest() {
//		String userId = "id123";
//		CartVO cart = mapper.getCart(userId);
//
//		System.out.println(userId + "님의 카트: " + cart.get);
//		}

}
