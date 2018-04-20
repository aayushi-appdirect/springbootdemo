package com.appdirect.service;

import com.appdirect.pojo.User;
import com.appdirect.pojo.UserRole;

public interface UserService {
	public User save(User user);

	public User loginUser(String userName, String userPassword);

	public UserRole save(UserRole userRole);
	
	
	
}
