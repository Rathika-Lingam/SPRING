package com.shop.model.dao;

import com.shop.model.entity.Role;
import com.shop.model.entity.User;

public interface UserDao {
	public void add(User user);
	public void edit(User user);
	public void addRole(Role role);
}
