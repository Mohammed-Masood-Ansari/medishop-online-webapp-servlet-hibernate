package com.online.medishop_online_dukan.serviceimpl;

import com.online.medishop_online_dukan.dao.UserDao;
import com.online.medishop_online_dukan.daoimpl.UserDaoImpl;
import com.online.medishop_online_dukan.dto.User;
import com.online.medishop_online_dukan.service.UserService;

public class UserServiceImpl implements UserService{

	UserDao dao = new UserDaoImpl();
	
	@Override
	public User saveUserService(User user) {
		
		
		return dao.saveUserDao(user);
	}

	@Override
	public User getUserByIdService(int userId) {
		
		return null;
	}

	@Override
	public User getUserByEmailService(String userEmail) {
	
		return dao.getUserByEmailDao(userEmail);
	}

}
