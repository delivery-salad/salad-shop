package com.delivery.salad.controller;

//mport javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.delivery.salad.command.OrderVO;
import com.delivery.salad.command.UserVO;
//import com.delivery.salad.order.service.OrderService;
import com.delivery.salad.user.service.UserService;

@Controller
public class OrderController {
	
//	@Autowired
//	private OrderService orderService;
	
	@Autowired
	private UserService userService;
	
	
	@GetMapping("/order/orderCheck")
	public String orderPageMove() {
		
		return "order/ORDERCHECK";
	}
	
	//회원 연결 후 
//	@GetMapping("/order/orderCheck/{userId}")
//	public void orderPageMove(@PathVariable("userId") String userId, OrderPageVO orderPage, Model model) {
//	
//		model.addAttribute("orderList", orderService.getProductInfo(orderPage.getOrders()));
//		model.addAttribute("userInfo", userService.getUserInfo(userId));
//	
//	
//		System.out.println("회원 아이디: " + userId);
//		System.out.println("주문 : " + order.getOrders());
//		
//		return "/order/ORDERCHECK";
//	}
	
//	@PostMapping("order/Order")
//	public String order(OrderVO vo, HttpServletRequest request) {
		
//		System.out.println(vo);
		
//		orderService.order(vo);
		
//		UserVO user order=new UserVO();
//		user.setUserId(order.getUserId());
//		
//		HttpSession session order=request.getSession();
//		
//		try {
//			UserVO login = userService.login(user);
//			login.setUserPw("");
//			session.setAttribute("user",  login);
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
//		return "redirect:/";
//	}

}
