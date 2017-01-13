package com.shop.model.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.entity.Orders;

@Repository
@Transactional
public class OrderDaoImpl implements OrderDao {

@Autowired
SessionFactory sf;

@Override
public void add(Orders orders)
{

	sf.getCurrentSession().save(orders);
     
  
}












}
