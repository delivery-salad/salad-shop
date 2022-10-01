package com.deliver.salad.cart;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

import java.util.List;

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
		
		
		String userId = "id123";
		int productNum = 20;
		int productCount = 2;
		
		CartVO cart = new CartVO();
		cart.setUserId(userId);
		cart.setProductNum(productNum);
		cart.setProductCount(productCount);
		
		//조건 
		int result = mapper.addCart(cart);
		
		//결과 
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
	
	@Test
	public void getCartTest() {
		String userId = "test123";
		
		List<CartVO> list = mapper.getCart(userId);
		for(CartVO cart : list) {
			System.out.println(cart);
			cart.initTotal();
			System.out.println("init cart : " + cart);
		}
		

		}

}
