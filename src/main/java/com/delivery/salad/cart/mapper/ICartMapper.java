package com.delivery.salad.cart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.delivery.salad.command.CartVO;

public interface ICartMapper {
	
	/** 카트 추가 */
	int addCart(CartVO cart);

	/** 카트 삭제 */
	int deleteCart(CartVO cart);
	
	/** 카트 수량 수정 */
	int updateCart(CartVO cart);
	
	/** 카트 목록 */
	List<CartVO> getCart(String userEmail);
	
	/** 카트 확인  */
	int checkCart(CartVO cart);
	
	/** 주문된 카트 삭제 */
	int deleteOrderCart(CartVO cart);
	
	/** */

}
