package com.shop.model.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.model.dao.UserDao;
import com.shop.model.entity.Role;
import com.shop.model.entity.User;

@Service

public class UserServiceImpl implements UserService {
	@Autowired
	UserDao ud;
	@Transactional
	public void add(User user) {
		ud.add(user);
	}
	@Transactional
	public void edit(User user) {
		ud.edit(user);
		
	}
	@Transactional
	public void addRole(Role role) {
	ud.addRole(role);
		
	}
	
	
	
	
	@Transactional
	public User getUser(int userid) {
		return ud.getUser(userid);
	}

	
	
	
}
