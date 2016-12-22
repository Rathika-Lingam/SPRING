package com.shop.model.service;


import com.shop.model.entity.Role;
import com.shop.model.entity.User;

public interface UserService {
public void add(User user);
public void addRole(Role role);
public void edit(User user);
}
