package com.delivery.salad.cart.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.delivery.salad.command.CartVO;


public interface ICartService {
	
	/** 카트 추가 */
	int addCart(CartVO cart);

	/** 카트 삭제 */
	int deleteCart(CartVO vo);
	
	/** 카트 수량 수정 */
	int updateCart(CartVO cart);
	
	/** 카트 목록 */
	CartVO getCart(String userEmail);
	
	/** 카트 확인  */
	int checkCart(CartVO cart);
	
	/** 주문된 카트 삭제 */
	int deleteOrderCart(CartVO cart);

}
