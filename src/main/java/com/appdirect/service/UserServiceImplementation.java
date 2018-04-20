package com.appdirect.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.appdirect.dao.UserRoleDao;
import com.appdirect.dao.UserDao;
import com.appdirect.pojo.User;
import com.appdirect.pojo.UserRole;


@Service
@Transactional
public class UserServiceImplementation implements UserService {

	//	@Autowired
	private UserDao userDao;
	@Autowired
	UserRoleDao userRoleDao;

	@Autowired

	public UserServiceImplementation(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public User save(User user) {
		userDao.save(user);
		return user;
	}

	@Override
	public User loginUser(String userName, String userPassword) {
		return userDao.findByUserNameAndUserPassword(userName, userPassword);
	}

	@Override
	public UserRole save(UserRole userRole) {
		return userRoleDao.save(userRole);
	}

}

