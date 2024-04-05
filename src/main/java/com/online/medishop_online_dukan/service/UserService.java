package com.online.medishop_online_dukan.service;

import com.online.medishop_online_dukan.dto.User;

public interface UserService {

	public User saveUserService(User user);
	
	public User getUserByIdService(int userId);
	
	public User getUserByEmailService(String userEmail);
	
}
