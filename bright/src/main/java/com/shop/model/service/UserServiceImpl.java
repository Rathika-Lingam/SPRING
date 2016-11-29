package com.shop.model.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.model.dao.UserDao;

import com.shop.model.entity.User;

@Service

public class UserServiceImpl implements UserService {
	@Autowired
	UserDao ud;
	@Transactional
	public void add(User user) {
		// TODO Auto-generated method stub
		ud.add(user);
	}
	@Transactional
	public void edit(User user) {
		ud.edit(user);
		
	}
	
	
	
}
