package com.delivery.salad.order.service;

import java.util.List;

import com.delivery.salad.command.OrderPageProductVO;
import com.delivery.salad.command.OrderProdVO;
import com.delivery.salad.command.OrderVO;
import com.delivery.salad.command.ProductVO;

public interface IOrderService {
	
	/** 주문 상품 정보 (주문페이지) */
	public List<OrderProdVO> getProductInfo(List<OrderProdVO> orders);
	
	/** 주문 상품 정보 (주문 처리) */
	public OrderProdVO getOrderInfo(int ProductNum);
	
	
	/** 주문 테이블 등록 */
	public int registerOrder(OrderVO order);	
	
	/** 주문 상품 테이블 등록 */
	public int registerOrderProd(OrderProdVO op);
	
	
	/** 주문 재고 차감 (재고 차감관련체크하기) */
//	public int deductStock (ProductVO product);
	
	/** 주문 취소 */
	public int orderCancle(String orderNum);
	
	
	/** 주문 상품 정보 (주문취소)*/
	public List<OrderProdVO> getOrderProdInfo(String orderNum);
	
	/** 주문 정보 (주문 취소) */
	public OrderVO getOrder(String orderNum);
	
	
	
	
	
	
	/** 주문 정보 */
	public List<OrderPageProductVO> getGoodsInfo(List<OrderPageProductVO> orders);
	
	/** 주문 */
	public void  order(OrderVO order);
	
	/** 주문 취소 */
//	public void orderCancle(OrderCancelVO orderCancel);	
	

}
