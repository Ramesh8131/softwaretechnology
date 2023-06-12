package com.webapp.sevice.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.webapp.dao.impl.UserDao;
import com.webapp.model.Users;
import com.webapp.service.IUserService;

public class UserService implements IUserService {
	
	@Autowired
	private UserDao userDao;

	@Override
	public Users saveUsers(Users users) {
		return userDao.saveUsers(users);
	}

}
