package com.delivery.salad.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.delivery.salad.cart.service.CartService;
import com.delivery.salad.command.CartVO;


@Controller
public class CartController {
	
	@Autowired
	private CartService service;
	
	@GetMapping("/order/prodDetail")
	public String moveProdDetail() {
		System.out.println("order/prodDetail : GET");
		return "order/PRODDETAIL";
	}

	@GetMapping("/order/cart")
	public String moveCart() {
		System.out.println("order/cart : GET");
		return "order/CART";
	}
	
	@PostMapping("/order/addCart")
	@ResponseBody
	public String addCart(CartVO cart, HttpServletRequest request) {
		
		//로그인 체크
		/**
		HttpSession session = request.getSession();
		UserVO vo = (UserVO)session.getAttribute("user");
		if(vo == null){
			return "4";
		}
		 */
		
		/** 장바구니 등록 */
		int result = service.addCart(cart);
		
		return result + "";
		
		
	}
	
	@GetMapping("/order/orderCheck")
	public String moveCheck() {
		System.out.println("order/orderCheck : GET");
		return "order/ORDERCHECK";
	}
	
}
