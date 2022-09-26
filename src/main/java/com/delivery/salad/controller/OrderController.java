package com.delivery.salad.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.delivery.salad.command.OrderVO;

@Controller
public class OrderController {
	
	@GetMapping("/order/orderCheck/{userId}")
	public void orderPageGet(@PathVariable("userId") String userId, OrderVO order, Model model) {
		
		System.out.println("회원 아이디: " + userId);
		System.out.println("주문 : " + order.getOrders());
	}

}
