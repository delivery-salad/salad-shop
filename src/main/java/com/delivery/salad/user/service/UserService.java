package com.delivery.salad.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.delivery.salad.command.UserVO;
import com.delivery.salad.user.mapper.IUserMapper;



@Service
public class UserService implements IUserService {
	
	@Autowired
	private IUserMapper mapper;

	@Override
	public void join(UserVO user) {
		mapper.join(user);
	}

}

