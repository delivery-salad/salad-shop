package com.delivery.salad.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.delivery.salad.command.KakaoUser;
import com.delivery.salad.command.NaverUser;
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
	public String Login(UserVO user, Model model, HttpServletRequest request) {
		System.out.println("user/login : POST");
		
		UserVO loginUser = service.login(user);
		
		if(loginUser == null) {
			
			return "redirect:/user/regist";
		}
		else {
			System.out.println("login User 확인 : " + loginUser.toString());
			
			model.addAttribute("loginUser", loginUser);

			
			return "redirect:/user/moveMypage";
		}



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
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session, RedirectAttributes ra) throws IOException, ParseException {				
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
		
		
		
	
		
		String email = (String) response_obj.get("email");
		int index = email.indexOf("@");
		String id = email.substring(0, index);
		// 아이디 추출 
		
		String phone = (String) response_obj.get("mobile");
		String[] phones = phone.split("-");
		
		String totalPhone = phones[0] + phones[1] + phones[2];
		
		String nickName = (String) response_obj.get("nickname");
		
		NaverUser loginUser = new NaverUser();
		loginUser.setUserName(nickName);
		loginUser.setnPhone(totalPhone);
		loginUser.setUserEmail(email);
		
		System.out.println("네이버 로그인 유저 객체 : " + loginUser.toString());
		model.addAttribute("loginUser", loginUser);
		session.setAttribute("login",loginUser); 
		//세션 생성	

		
		// naver로 가입된 사용자가 있는지 확인하는 로직 
		int naver = service.findnaver(nickname, email);
		System.out.println("네이버 : " + naver);
		if (naver == 0) {
			service.naverinsert(nickname, email, totalPhone);
			ra.addFlashAttribute("msg", "1");
			return "redirect:/user/moveMyADDRNaver";

		}
		else {
			service.findnaver(nickname, email);
			return "redirect:/user/moveMypage";
		}
		

		
	}
	
	@Autowired
	private MemberService ms;

	@RequestMapping(value="/user/kakaoLogin", method=RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code, HttpSession session, Model model, RedirectAttributes ra) throws Exception {
		System.out.println("카카오 로그인 api 발동");
		System.out.println("#########" + code);
		
		String access_Token = ms.getAccessToken(code);
		HashMap<String, Object> userInfo = ms.getUserInfo(access_Token);
		System.out.println("###access_Token#### : " + access_Token);
		System.out.println(userInfo.toString());
		System.out.println("###nickname#### : " + userInfo.get("nickname"));
		System.out.println("###email#### : " + userInfo.get("email"));
		
		String email = (String) userInfo.get("email");
		int index = email.indexOf("@");
		String id = email.substring(0, index);
		// 아이디 추출 
		String nickname = (String) userInfo.get("nickname");
		
		KakaoUser loginUser = new KakaoUser();
		
		loginUser.setUserName(nickname); 	
		loginUser.setUserEmail(email);
		
		System.out.println("카카오 로그인 유저 객체 : " + loginUser.toString());
		model.addAttribute("loginUser", loginUser);
		session.setAttribute("login",loginUser); 
		
		
		// kakao로 가입된 사용자가 있는지 확인하는 로직 
		int kakao = service.findkakao(nickname, email);
		System.out.println("카카오 : " + kakao);
		if (kakao == 0) {
			service.kakaoinsert(nickname, email);
			ra.addFlashAttribute("msg", "1");
			return "redirect:/user/moveMyADDRKakao";

		}
		else {
			service.findkakao(nickname, email);
			return "redirect:/user/moveMypage";
		}
		


    	}
	
	@GetMapping("/user/moveMypage")
	public String moveMypage() {
		System.out.println("user/moveMypage : GET");
		
		return "user/MYPAGE";
	}
	
	// 회원정보 조회 
	@GetMapping("/user/moveMyUs")
	public String moveMypageUser() {
		System.out.println("user/moveMypageUser : GET");
		
		return "user/MYPAGE_USER";
	}
	
	// 회원 정보 조회 -> 수정 버튼 
	@GetMapping("/user/moveMyModi")
	public String moveMypageChangeInfo() {
		System.out.println("user/moveMypageModi : GET");
		
		return "user/MYPAGE_CHANGE_INFO";
	}
	
	@PostMapping("/user/MyModi")
	public String MypageModify(UserVO user) {
		System.out.println("/user/MyModi : POST");
		
		System.out.println("회원정보 수정 유저 객체 확인 : " + user.toString());
		service.modify(user);
	
		
		
		return "redirect:/user/moveLogin";
	}
	
	// 회원 주소 입력 (배송지 관리) <- 카카오 및 네이버 첫 이용자 주소 등록 
	@GetMapping("/user/moveMyADDRKakao")
	public String moveMypageChangeAddrKakao() {
		System.out.println("user/moveMyADDRKakao : GET");
		
		return "user/MYPAGE_CHANGE_ADDR_KAKAO";
	}
	
	// 회원 주소 입력 (배송지 관리) <- 카카오 및 네이버 첫 이용자 주소 등록 
	@GetMapping("/user/moveMyADDRNaver")
	public String moveMypageChangeAddrNaver() {
		System.out.println("user/moveMyADDRNaver : GET");
		
		return "user/MYPAGE_CHANGE_ADDR_NAVER";
	}
	
	// 카카오 전용 첫 주소 입력 
	@PostMapping("/user/KakaoChAddr")
	public String ChAddrKakao(UserVO user, HttpSession session) {
		System.out.println("user/ChAddr : POST");
		service.updateKakaoAddr(user);
		
		// 회원정보 업데이트 되었으니 세션 다시 생성해줌 
		session.removeAttribute("login");
		
		String Phone = user.getUserPhone();
		UserVO kakaoUser = service.searchKakao(Phone);
		// 전화번호로 가져오기 
		
		System.out.println("카카오 정보 가져오는지 확인 " + kakaoUser);
		
		session.setAttribute("login", kakaoUser);
		
		
		return "redirect:/user/moveMypage";
		
	}
	
	// 네이버  전용 첫 주소 입 
	@PostMapping("/user/NaverChAddr")
	public String ChAddrNaver(UserVO user, HttpSession session) {
		System.out.println("user/ChAddr : POST");
		service.updateKakaoAddr(user);
		
		// 회원정보 업데이트 되었으니 세션 다시 생성해줌 
		session.removeAttribute("login");
		
		String Phone = user.getUserPhone();
		UserVO kakaoUser = service.searchKakao(Phone);
		// 전화번호로 가져오기 
		
		System.out.println("네이버 정보 가져오는지 확인 " + kakaoUser);
		
		session.setAttribute("login", kakaoUser);
		
		
		return "redirect:/user/moveMypage";
		
	}
	
	// 비밀번호 변경 검증 화면 (사이드바) 
	@GetMapping("/user/moveMyAu")
	public String moveMypageAuthPW() {
		System.out.println("user/moveMypageAuth : GET");
		
		return "user/MYPAGE_AUTH_PW";
	}
	
	@PostMapping("/user/PwAuth")
	public String MypagePwAuth(UserVO user ) {
		System.out.println("/user/PwAuth : POST");
		System.out.println("비밀번호 검증 : " + user.toString());

		UserVO loginUser = service.login(user);
		
		if (loginUser == null) {
			System.out.println("비밀번호 검증실패");
			return "redirect:/user/moveLogin";

		}
		else {
			System.out.println("비밀번호 검증 성공 ");
			return "redirect:/user/moveMyChPw";

		}
		

	}
	
	// 실제 비밀번호 변경 화면 
	@GetMapping("/user/moveMyChPw")
	public String moveMypageChangePW() {
		System.out.println("user/moveMypageChangePw : GET");
		
		return "user/MYPAGE_CHANGE_PW";
	}
	
	@PostMapping("/user/ChPw")
	public String MypageChangePw(Model model, UserVO user) {
		System.out.println("user/ChPw : POST");
		System.out.println("비밀번호 변경 유저 : " + user.toString());
		
		service.ChPw(user);
		
		return "redirect:/user/moveLogin";

	}
	
	@GetMapping("/user/moveMyDel")
	public String moveMypageDelete() {
		System.out.println("user/moveMyDel : GET");
		
		return "user/MYPAGE_USER_DELETE";
	}
	
	@PostMapping("/user/MyDel")
	public String MypageDelete(UserVO user) {
		System.out.println("user/MyDel : POST");
		
		service.delete(user);
		return "redirect:/user/moveLogin";
	}
	
	// 취소/ 교환 내역 
	@GetMapping("/user/moveMyCanEx")
	public String moveMypageCancelExchagne() {
		System.out.println("user/moveMypageCancelExchange : GET");
		
		return "user/MYPAGE_CANCEL_EXCHANGE";
	}
	
	
	// 환불내역 
	@GetMapping("/user/moveMyRe")
	public String moveMypageReturn() {
		System.out.println("user/moveMyRe : GET");
		
		return "user/MYPAGE_RETURN";
	}
	
	
	
}

	

