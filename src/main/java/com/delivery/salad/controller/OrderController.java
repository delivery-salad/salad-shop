package com.delivery.salad.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.delivery.salad.cart.service.ICartService;
import com.delivery.salad.command.CartVO;
import com.delivery.salad.command.OrdersVO;
import com.delivery.salad.command.ProductVO;
import com.delivery.salad.command.UserVO;

import com.delivery.salad.orders.service.IOrdersService;
import com.delivery.salad.product.service.IProductService;
import com.delivery.salad.user.service.IUserService;






@Controller
public class OrderController {
	
	@Autowired
	private IOrdersService ordersService;
	
	
	@Autowired
	private IUserService userService;
	
	@Autowired
	private ICartService cartService;
	
	@Autowired
	private IProductService productService;
	

	//@RequestParam("testtest")int testtest
	// 상품상세보기에서 바로 주문 이동 
	@PostMapping("/order/orderCheck/{userEmail}")
	public String orderPageMove(@PathVariable("userEmail") String userEmail, OrdersVO orders,ProductVO product,UserVO user, Model model)  {
		
		System.out.println("order/orderCheck: GET");
		System.out.println("컨트롤러 order 페이지로 이동!: userEmail=" + userEmail);
		

		System.out.println(product.toString());
		model.addAttribute("orderList", productService.productSelect(product.getProductNum()));
		model.addAttribute("orderCount", orders.getOrderCount());
		System.out.println(orders.toString());
		
		
		return "/order/ORDERCHECK";
	}
	
	//장바구니에서 주문하기 이동 
	@PostMapping("/order/orderCheck2/{userEmail}")
	public String orderPageMove2(@PathVariable("userEmail") String userEmail,CartVO cart,UserVO user, Model model)  {
		
		System.out.println("order/orderCheck2: GET");
		System.out.println("컨트롤러 order 페이지로 이동!: userEmail=" + userEmail);
		

//		System.out.println(product.toString());
//		model.addAttribute("orderList", productService.productSelect(product.getProductNum()));
		model.addAttribute("cart", cartService.getCart(userEmail));


		System.out.println(cart.toString());
		
		
		return "/order/ORDERCHECK2";
	}
	
	
	// 상품상세보기에서 바로 주문 
	@PostMapping("/order/Order")
	public String order(OrdersVO orders, UserVO user, CartVO cart,HttpServletRequest request) {
		System.out.println("orders컨트롤러 진입 ");
		System.out.println(orders);
		
		ordersService.registOrder(orders);

		
//		UserVO user =new UserVO();
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
		System.out.println("컨트롤러 카트 넘버: "+ cart.getCartNum());
//		order.setTotalPrice(order.getOrderCount()* order.getProductPrice());
		System.out.println("주문정보 " + orders.toString());
		

		
		return "redirect:/";
	}
	
	//장바구니에서 주문하기 
	@PostMapping("/order/Order2")
	public String order2(OrdersVO orders, UserVO user, CartVO cart,HttpServletRequest request) {
		System.out.println("orders컨트롤러 진입 ");
		System.out.println(orders);
		
		ordersService.registOrder(orders);

		

		System.out.println("컨트롤러 카트 넘버: "+ cart.getCartNum());
//		order.setTotalPrice(order.getOrderCount()* order.getProductPrice());
		System.out.println("주문정보 " + orders.toString());
		
		
		
		return "redirect:/";
	}

}
