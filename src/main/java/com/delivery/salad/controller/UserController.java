package com.delivery.salad.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.delivery.salad.command.UserVO;
import com.delivery.salad.user.NaverLogin;
import com.delivery.salad.user.service.IUserService;
import com.delivery.salad.user.service.MemberService;
import com.delivery.salad.util.MailSendService;
import com.github.scribejava.core.model.OAuth2AccessToken;


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
	
//	@GetMapping("/user/moveLogin")
//	public String moveLogin() {
//		System.out.println("user/moveLogin : GET");
//		
//		return "user/LOGIN";
//	}
	
	@PostMapping("/user/login")
	public String Login(UserVO user, Model model) {
		System.out.println("user/login : POST");
		
		UserVO loginUser = service.login(user);

		System.out.println("login User 확인 : " + loginUser.toString());
		
		// 모델 객체 만들기 
		// 세션 어디서 만들지 정하기 
		
		
		return "/home";
	}
	
	/* Naver Login */
	private NaverLogin naverLogin;
	private String apiResult = null;
	
	@Autowired
	private void setNaverLogin(NaverLogin naverLoginVO) {
		this.naverLogin = naverLoginVO;
	}
	
	//로그인 첫 화면 요청 메소드	
	
	@RequestMapping(value = "/user/moveLogin", method = { RequestMethod.GET, RequestMethod.POST })	
	// get과 post 둘 다 사용하기 위해 사용 
	public String login(Model model, HttpSession session) {				
		/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */		
		String naverAuthUrl = naverLogin.getAuthorizationUrl(session);				
		//https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&		
		//redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125		
		System.out.println("네이버:" + naverAuthUrl);		
		
		model.addAttribute("url", naverAuthUrl); 	
		
		return "user/LOGIN";	
		}
	
	//네이버 로그인 성공시 callback호출 메소드	
	@RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })	
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws IOException, ParseException {				
		System.out.println("여기는 callback");		
		OAuth2AccessToken oauthToken;        
		oauthToken = naverLogin.getAccessToken(session, code, state);
		
		//1. 로그인 사용자 정보를 읽어온다.		
		apiResult = naverLogin.getUserProfile(oauthToken);  //String형식의 json데이터	
		System.out.println("로그인 사용자 값 " + apiResult.toString());
		/** apiResult json 구조		
		 * {"resultcode":"00",		 
		 * "message":"success",		 
		 * "response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}}		**/				
		//2. String형식인 apiResult를 json형태로 바꿈		
		JSONParser parser = new JSONParser();		
		Object obj = parser.parse(apiResult);		
		JSONObject jsonObj = (JSONObject) obj;				
		//3. 데이터 파싱 		
		//Top레벨 단계 _response 파싱		
		JSONObject response_obj = (JSONObject)jsonObj.get("response");		
		//response의 nickname값 파싱		
		String nickname = (String)response_obj.get("nickname"); 		
		System.out.println(nickname);				
		//4.파싱 닉네임 세션으로 저장		
		session.setAttribute("sessionId",nickname); //세션 생성				
		model.addAttribute("result", apiResult);	     		
		return "home";
	}
	
	@Autowired
	private MemberService ms;

	@RequestMapping(value="/user/kakaoLogin", method=RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code) throws Exception {
		System.out.println("카카오 로그인 api 발동");
		System.out.println("#########" + code);
		
		String access_Token = ms.getAccessToken(code);
		HashMap<String, Object> userInfo = ms.getUserInfo(access_Token);
		System.out.println("###access_Token#### : " + access_Token);
		System.out.println("###nickname#### : " + userInfo.get("nickname"));
		System.out.println("###email#### : " + userInfo.get("email"));
		return "home";
    	}
	
	@GetMapping("/user/moveMypage")
	public String moveMypage() {
		System.out.println("user/moveMypage : GET");
		
		return "user/MYPAGE";
	}
	
	@GetMapping("/user/moveMyUs")
	public String moveMypageUser() {
		System.out.println("user/moveMypageUser : GET");
		
		return "user/MYPAGE_USER";
	}
	
	@GetMapping("/user/moveMyIn")
	public String moveMypageChangeInfo() {
		System.out.println("user/moveMypageInfo : GET");
		
		return "user/MYPAGE_CHANGE_INFO";
	}
	
	@GetMapping("/user/moveMyAu")
	public String moveMypageAuthPW() {
		System.out.println("user/moveMypageAuth : GET");
		
		return "user/MYPAGE_AUTH_PW";
	}
	
	@GetMapping("/user/moveMyChPw")
	public String moveMypageChangePW() {
		System.out.println("user/moveMypageChangePw : GET");
		
		return "user/MYPAGE_CHANGE_PW";
	}
	
	@GetMapping("/user/moveMyCanEx")
	public String moveMypageCancelExchagne() {
		System.out.println("user/moveMypageCancelExchange : GET");
		
		return "user/MYPAGE_CANCEL_EXCHANGE";
	}
	
	@GetMapping("/user/moveMyRe")
	public String moveMypageReturn() {
		System.out.println("user/moveMyRe : GET");
		
		return "user/MYPAGE_RETURN";
	}
	
	
	
}

	

