package com.shop.model.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.model.entity.Category;


@Repository

@Transactional
public class CategoryDaoImpl implements CategoryDao {
	@Autowired
	SessionFactory session;
	
	@Override
	public void add(Category category) {
		session.getCurrentSession().save(category);
	}

	@Override
	public void edit(Category category) {
		session.getCurrentSession().update(category);
	}

	@Override
	public void delete(int categoryId) {		
		session.getCurrentSession().delete(getcategory(categoryId));
	}

	@Override
	public Category getcategory(int categoryId) {
		return (Category)session.getCurrentSession().get(Category.class, categoryId);
	}

	@Override
	public List getAllcategory() {
		return session.getCurrentSession().createQuery("from Category").list();
	}

}
