package com.delivery.salad.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.delivery.salad.cart.service.ICartService;
import com.delivery.salad.command.CartVO;
import com.delivery.salad.command.UserVO;
import com.delivery.salad.user.service.IUserService;
import com.delivery.salad.user.service.UserService;
import com.delivery.salad.util.interceptor.LoginAuth;

@Controller
public class CartController {
	
	@Autowired
	private ICartService service;
	
	@Autowired
	private IUserService userService;
	

	
	@GetMapping("/order/cart/{userEmail}")
	public String moveCart(@PathVariable String userEmail, Model model, UserVO user) {
		
		
		model.addAttribute("ci", service.getCart(userEmail));
//		CartVO cart = service.getCart(userEmail);
		System.out.println(service.getCart(userEmail));
		System.out.println(userEmail);
		
		System.out.println("order/cart : GET");
		return "/order/CART";
	}
	
	@PostMapping("/order/addCart")
	@ResponseBody
	public int addCart(@RequestBody CartVO cart) {
		
		//로그인 체크
		/**
		HttpSession session = request.getSession();
		UserVO vo = (UserVO)session.getAttribute("");
		if(vo == null){
			return "3";
		}
		 */
		
		/** 장바구니 등록 */
	
		System.out.println("컨트롤러 addCart ");
		

		System.out.println(service.checkCart(cart));
		if(service.checkCart(cart) != 0) {
			return 2;
		}else if(service.checkCart(cart) == 0) {
			service.addCart(cart);
			
			System.out.println("카트 추가 완료 ");
			
			System.out.println(cart);
			return 1;
			
		}
		return  0;
		  
		 

	}
	
	/** 장바구니 수량 수정 */
	@PostMapping("/order/updateCart/{userEmail}")
	public String updateCart(CartVO cart,@PathVariable String userEmail) {
	
		System.out.println("장바구니 수정 컨트롤러 들어옴");
		
		service.updateCart(cart);
		
		System.out.println(cart);
		
	
		return "redirect:/order/cart/{userEmail}";
	}
	
	@PostMapping("/order/deleteCart/{userEmail}")
	public String deleteCart(@PathVariable String userEmail,CartVO cart, UserVO user) {
		System.out.println("컨트롤러 삭제 진입 ");
		System.out.println("컨트롤러 카트 넘버: "+ cart.getCartNum());

		
		service.deleteCart(cart);
		return "redirect:/order/cart/{userEmail}";
	}

}
