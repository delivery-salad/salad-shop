package com.delivery.salad.user.service;

import com.delivery.salad.command.UserVO;

public interface IUserService {
	
	int idCheck(String JOINID);

	
	void join(UserVO user);
	
	UserVO login(UserVO user);

}
