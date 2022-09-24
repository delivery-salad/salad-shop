package com.delivery.salad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.delivery.salad.command.UserVO;
import com.delivery.salad.user.service.IUserService;
import com.delivery.salad.util.MailSendService;


@Controller
public class UserController {

	@Autowired
	private IUserService service; 
	
	@ResponseBody
	@PostMapping("/user/idCheck")
	public String idCheck(@RequestBody String JOINID) {
		
		int result = service.idCheck(JOINID);
		System.out.println(result);
		
		if(result == 1) {
			
			System.out.println("컨트롤러: 존재하는 아이디입니다.");
			return "no";
			
		}else {
			
			System.out.println("컨트롤러 : 사용 가능한 아이디입니당.");
			return "ok";
		}
	}
	
	//이메일 일증 
	@Autowired
	private MailSendService mailService;
	
	@GetMapping("/user/mailCheck")
	@ResponseBody
	public String mailCheck(String joinEmail) {
		System.out.println("이메일 인증 요청 들어옴!");
		System.out.println("인증 이메일 : " + joinEmail);
		return mailService.joinEmail(joinEmail);
	}
	
	
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
	
	@GetMapping("/user/moveLogin")
	public String moveLogin() {
		System.out.println("user/moveLogin : GET");
		
		return "user/LOGIN";
	}
	
	@PostMapping("/user/login")
	public String Login(UserVO user, Model model) {
		System.out.println("user/login : POST");
		
		UserVO loginUser = service.login(user);

		System.out.println("login User 확인 : " + loginUser.toString());
		
		// 모델 객체 만들기 
		// 세션 어디서 만들지 정하기 
		
		
		return "/home";
	}
}
