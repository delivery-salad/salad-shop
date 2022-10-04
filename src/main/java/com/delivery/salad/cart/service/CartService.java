package com.delivery.salad.cart.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.delivery.salad.cart.mapper.ICartMapper;
import com.delivery.salad.command.CartVO;

@Service
public class CartService implements ICartService {
	
	@Autowired
	private ICartMapper mapper;
	
	/** 카트 추가 */
	@Override
	public int addCart(CartVO cart) {
	return mapper.addCart(cart);
	}
	
	/** 카트 삭제 */
	@Override 
	public int deleteCart(CartVO cart) {
		return mapper.deleteCart(cart);
	}
	
	/** 카트 수량 수정 */
	@Override
	public int updateCart(CartVO cart) {
		System.out.println("cartService 들어옴");
		return mapper.updateCart(cart);
	}
	
	
	/** 카트 목록 */
	@Override
	public List<CartVO> getCart(String userEmail){
		
		List<CartVO> cart = mapper.getCart(userEmail);
		
		for(CartVO vo : cart) {
			vo.initTotal();
		}
		return cart;
	}
	
	/** 카트 확인  */
	@Override
	public int checkCart(CartVO cart) {
		System.out.println("CartService들어옴~");
		System.out.println("CartService" + cart);
		
		return mapper.checkCart(cart);
	}
	
	/** 주문된 카트 삭제 */
	@Override 
	public int deleteOrderCart(CartVO cart) {
		System.out.println("서비스 삭제 진입 ");
		return mapper.deleteOrderCart(cart);
	}


}
