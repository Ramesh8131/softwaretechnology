package com.webapp.dao.impl;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;

import com.webapp.dao.IUserDao;
import com.webapp.model.Users;

public class UserDao implements IUserDao {
	
	@Autowired
	private EntityManager entityManager;
	
	@Override
	public Users saveUsers(Users users) {		
		return entityManager.merge(users);	
	}

}
