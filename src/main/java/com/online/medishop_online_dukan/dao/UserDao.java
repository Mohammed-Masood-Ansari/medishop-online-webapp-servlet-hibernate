package com.online.medishop_online_dukan.dao;

import com.online.medishop_online_dukan.dto.User;

public interface UserDao {

	public User saveUserDao(User user);
	
	public User getUserByIdDao(int userId);
	
	public User getUserByEmailDao(String userEmail);
	
}
