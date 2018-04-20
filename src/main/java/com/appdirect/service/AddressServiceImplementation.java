package com.appdirect.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appdirect.dao.AddressDao;
import com.appdirect.pojo.Address;

@Service
public class AddressServiceImplementation implements AddressService {
	
	@Autowired
	AddressDao addressDao;
	@Override
	public Address save(Address address) {
		addressDao.save(address);
		return address;
	}
}
