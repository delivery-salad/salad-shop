package com.delivery.salad.user.mapper;

import com.delivery.salad.command.UserVO;

public interface IUserMapper {
	
	int idCheck(String JOINID);

	
	void join(UserVO user);
	
	UserVO login(UserVO user);

}
