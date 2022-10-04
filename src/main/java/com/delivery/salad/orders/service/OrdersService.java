package com.delivery.salad.orders.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.delivery.salad.command.OrdersVO;
import com.delivery.salad.command.ProductVO;
import com.delivery.salad.orders.mapper.IOrdersMapper;

@Service
public class OrdersService implements IOrdersService {
	
	@Autowired
	IOrdersMapper mapper;

	@Override
	public void registOrder(OrdersVO orders) {
		System.out.println("ordersService 진입 ");
		mapper.registOrder(orders);

	}

	@Override
	public List<OrdersVO> getList(String userEmail) {
		return getList(userEmail);
	}

	@Override
	public int getTotal(String userEmail) {
		return mapper.getTotal(userEmail);
	}



	@Override
	public OrdersVO getOrder(String userEmail) {
		System.out.println("OrdersService 진입 : getOrder ");
		OrdersVO orders = mapper.getOrder(userEmail);
		return orders;
	}

	@Override
	public void updateOrder(OrdersVO orders) {
		mapper.updateOrder(orders);

	}

	@Override
	public void delete(int orderNum) {
		mapper.delete(orderNum);

		
	}

}
