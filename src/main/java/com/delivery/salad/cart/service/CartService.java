package com.delivery.salad.cart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.delivery.salad.cart.mapper.ICartMapper;
import com.delivery.salad.command.CartVO;

@Service
public class CartService implements ICartMapper {
	
	@Autowired
	private ICartMapper mapper;

	@Override
	public int addCart(CartVO cart) {
		/** 장바구니 체크 */
		CartVO checkCart = mapper.checkCart(cart);

		if (checkCart != null) {
			return 2;
		}
		/** 장바구니 등록, 에러의 경우 0 리턴 */
		try {
			return mapper.addCart(cart);
		} catch (Exception e) {
			return 0;
		}
	}
	
	@Override 
	public int deleteCart(int cartNum) {
		return mapper.deleteCart(cartNum);
	}
	
	@Override
	public int updateCart(CartVO cart) {
		return mapper.updateCart(cart);
	}

	@Override
	public List<CartVO> getCart(String userId){
		
		List<CartVO> cart = mapper.getCart(userId);
		
		for(CartVO vo : cart) {
			vo.initTotal();
		}
		return cart;
	}
	
	@Override
	public CartVO checkCart(CartVO cart) {
		return mapper.checkCart(cart);
	}
	
	@Override 
	public int deleteOrderCart(CartVO cart) {
		return mapper.deleteOrderCart(cart);
	}

}
