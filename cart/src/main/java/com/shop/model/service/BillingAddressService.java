package com.shop.model.service;

import java.util.List;

import com.shop.model.entity.BillingAddress;

public interface BillingAddressService {
	

	public void saveorupdate(BillingAddress bs);
	public List getbyid(int id);
}
