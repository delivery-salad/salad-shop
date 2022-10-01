package com.delivery.salad.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
		
		return "/order/CART";
	}
	
//	@GetMapping("/order/cart/{userId}")
//	public String moveCart(@PathVariable("userId") String userId, Model model) {
//		
//		model.addAttribute("장바구니 정보: ", service.getCart(userId));
//		
//		System.out.println("order/cart : GET");
//		return "/order/CART";
//	}
	
	@PostMapping("/order/addCart")
	@ResponseBody
	public String addCart(CartVO cart, HttpServletRequest request) {
		
		//로그인 체크
		/**
		HttpSession session = request.getSession();
		UserVO vo = (UserVO)session.getAttribute("user");
		if(vo == null){
			return "3";
		}
		 */
		
		/** 장바구니 등록 */
		int result = service.addCart(cart);
		
		return result + "";
		
		
	}
	
	/** 장바구니 수량 수정 */
	@PostMapping("/order/updateCart")
	public String updateCart(CartVO cart) {
		service.updateCart(cart);
		
		//User 연결 후 사용 
//		return "redirect:/order/cart/" + cart.getUserId();
		return "redirect:/order/cart";
	}
	
	/** 장바구니 수량 수정 (삭제)*/
	@PostMapping("/order/deleteCart")
	public String deleteCart(CartVO cart) {
		service.deleteCart(cart.getCartNum());
		
		return "redirect:/order/cart/" + cart.getUserId();
	}
	

	
}
