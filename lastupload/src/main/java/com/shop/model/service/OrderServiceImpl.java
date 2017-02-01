package com.shop.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.dao.OrderDao;
import com.shop.model.entity.Orders;
import com.shop.model.entity.Products;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {
@Autowired 
OrderDao od;
	@Override
	public void add(Orders orders) {
		{
			od.add(orders);
		}

		
	}

}
