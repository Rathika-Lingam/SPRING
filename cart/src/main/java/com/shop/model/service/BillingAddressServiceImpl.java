package com.shop.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.dao.BillingAddressDao;
import com.shop.model.entity.BillingAddress;



@Service
public  class BillingAddressServiceImpl implements BillingAddressService {
	@Autowired
	BillingAddressDao bad;
	
	@Transactional
	public void saveorupdate(BillingAddress bs) {
		bad.saveorupdate(bs);
	}
	@Transactional
	public List getbyid(int id) {
		return bad.getbyid(id);
	}
	

}
