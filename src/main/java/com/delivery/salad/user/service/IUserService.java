package com.delivery.salad.user.service;

import org.apache.ibatis.annotations.Param;

import com.delivery.salad.command.KakaoUser;
import com.delivery.salad.command.UserVO;

public interface IUserService {
	
	int idCheck(String JOINID);

	
	void join(UserVO user);
	
	UserVO login(UserVO user);
	
	int findkakao(@Param("userName") String userName, @Param("userEmail") String userEmail);
	
	void kakaoinsert(@Param("userName") String userName, @Param("userEmail") String userEmail);
	
	int findnaver(@Param("userName") String userName, @Param("userEmail") String userEmail);
	
	void naverinsert(@Param("userName") String userName, @Param("userEmail") String userEmail, @Param("nPhone") String nPhone);
	
	// 수정 
	void modify(UserVO user);
	
	// 비밀번호 변경 
	void ChPw(UserVO user);	
	
	// 삭제 
	void delete(UserVO user);
	
	// 주소 및 전화번호 업데이트 
	void updateKakaoAddr(UserVO user);
	
	// 카카오 정보 가져오기 
	UserVO searchKakao(String Phone);

	
	
	// 주소 및 전화번호 업데이트 
	void updateNaverAddr(UserVO user);
	
	// 카카오 정보 가져오기 
	UserVO searchNaver(String Phone);
	
}
