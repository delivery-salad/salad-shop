package com.delivery.salad.user.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.delivery.salad.command.KakaoUser;
import com.delivery.salad.command.UserVO;
import com.delivery.salad.user.mapper.IUserMapper;



@Service
public class UserService implements IUserService {
	
	@Autowired
	private IUserMapper mapper;
	

	
	@Override
	public int idCheck(String JOINID) {
		// TODO Auto-generated method stub
		return mapper.idCheck(JOINID);
	}

	@Override
	public void join(UserVO user) {
		mapper.join(user);
	}
	
	@Override
	public UserVO login(UserVO user) {
		return mapper.login(user);
	}
	
	@Override
	public int findkakao(@Param("userName") String userName, @Param("userEmail") String userEmail) {
		return mapper.findkakao(userName, userEmail);
	}
	
	@Override
	public void kakaoinsert(@Param("userName") String userName, @Param("userEmail") String userEmail) {
		mapper.kakaoinsert(userName, userEmail);
	}
	
	@Override
	public int findnaver(@Param("userName") String userName, @Param("userEmail") String userEmail) {
		return mapper.findnaver(userName, userEmail);
	}
	
	@Override
	public void naverinsert(@Param("userName") String userName, @Param("userEmail") String userEmail, @Param("nPhone") String nPhone) {
		mapper.naverinsert(userName, userEmail, nPhone);
	}
	
	// 수정 
	@Override
	public void modify(UserVO user) {
		mapper.modify(user);
	}
	
	// 비밀번호 변경 
	@Override
	public void ChPw(UserVO user) {
		mapper.ChPw(user);
	}

	@Override
	public void delete(UserVO user) {
		mapper.delete(user);
	}
	
	@Override
	public void updateKakaoAddr(UserVO user) {
		mapper.updateKakaoAddr(user);
	}
	
	@Override
	public UserVO searchKakao(String Phone) {
		return mapper.searchKakao(Phone);
	}
	
	@Override
	public UserVO searchNaver(String Phone) {
		// TODO Auto-generated method stub
		return mapper.searchNaver(Phone);
	}
	@Override
	public void updateNaverAddr(UserVO user) {
		mapper.updateNaverAddr(user);
	}
}

