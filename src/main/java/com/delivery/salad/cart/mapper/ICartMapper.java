package com.delivery.salad.cart.mapper;

import java.util.List;

import com.delivery.salad.command.CartVO;

public interface ICartMapper {
	
	/** 카트 추가 */
	int addCart(CartVO cart);

	/** 카트 삭제 */
	int deleteCart(int cartNum);
	
	/** 카트 수량 수정 */
	int updateCart(CartVO cart);
	
	/** 카트 목록 */
	List<CartVO> getCart(String userId);
	
	/** 카트 확인  */
	CartVO checkCart(CartVO cart);
}
