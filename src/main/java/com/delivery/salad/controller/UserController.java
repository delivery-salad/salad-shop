package com.delivery.salad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.delivery.salad.command.UserVO;
import com.delivery.salad.user.service.IUserService;


@Controller
public class UserController {

	@Autowired
	private IUserService service; 
	
	@GetMapping("/user/regist")
	public String moveRegist() {
		System.out.println("user/regist : GET");
		return "user/REGIST";
	}
	
	@PostMapping("/user/registUser")
	public String Regist(UserVO user) {
		System.out.println("user/registUser : POST");
		System.out.println("등록 user 확인 : " +  user.toString());
		service.join(user);
		
		return "user/LOGIN";
	}
}
