package com.shop.model.dao;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.model.entity.User;

@Repository
@Transactional
public class UserDaoImpl implements UserDao {
	@Autowired 
	SessionFactory sf;

	
				
				@Override
				public void add(User user) {
					sf.getCurrentSession().save(user);
				}
				@Override
				public void edit(User user) {
					sf.getCurrentSession().update(user);
				}

				
	}
		


