package com.delivery.salad.orders.service;

import java.util.List;

import com.delivery.salad.command.OrdersVO;
import com.delivery.salad.command.ProductVO;

public interface IOrdersService {
	
	//주문등록 
			void registOrder(OrdersVO orders);
			
			//주문목록 
			List<OrdersVO> getList(String userEmail);
			
			//총 주문 수 
			int getTotal(String userEmail);
			

			
			//주문 상세보기 
			OrdersVO getOrder(String userEmail);
			
			//주문 수정 
			void updateOrder(OrdersVO orders);
			
			//주문 삭제 	
			void delete(int orderNum);

}
