package com.delivery.salad.util.interceptor;


import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.delivery.salad.command.UserVO;

public class LoginAuth implements HandlerInterceptor{
	
	
	// controller에서 데이터 처리 후 디스패처에 보내기 전 가져와서 확인 
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		HttpSession session = request.getSession();

		System.out.println("로그인 요청 후 디스패처에게 가기 전 인터셉터 발동");
//		Object user = modelAndView.getModel().get("loginUser");
		ModelMap mv = modelAndView.getModelMap();
		// model 객체에 있는 것을 ModelMap 타입으로 반환해줌
		
		UserVO user = (UserVO) mv.get("loginUser");
		// ModelMap객체에서 값을 가져올 수 있음
		
		System.out.println("인터셉터에서 불러온 유저 데이터 : " + user);
		
		if (user == null) {
			modelAndView.addObject("msg", "loginFail");
			modelAndView.setViewName("/user/LOGIN");
			// 작성한 경로로 돌아갈 수 있도록 작성 
			
			
			response.setContentType("text/html charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			String html = "<script>\r\n"
					 +"alert('아이디 및 비밀번호를 확인주세요.'); \r\n"
					 
					 +"</script>";
			out.print(html);
			out.flush();
		} else {
			System.out.println("로그인 성공");
			// 로그인을 성공했으면 session을 생성해서 로그인 유지할 수 있는 수단으로 사용
			
			session.setAttribute("login", user);
			// 로그인한 유저의 정보를 유지할 수 있도록 session에 저장 
			
//			response.sendRedirect(request.getContextPath() + "/user/moveMypage");
//			response.sendRedirect(request.getContextPath());
			// /myweb으로 리턴하는 건데 contextroot는 바뀔 수 있으므로 위처럼 작성 
		}

	}
}
