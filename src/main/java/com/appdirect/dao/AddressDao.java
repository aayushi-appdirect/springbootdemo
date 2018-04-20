package com.appdirect.dao;

import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.appdirect.pojo.Address;
@Transactional
@Repository
public interface AddressDao extends CrudRepository<Address,Integer> {


	@Override
	<S extends Address> S save(S Address);
}
