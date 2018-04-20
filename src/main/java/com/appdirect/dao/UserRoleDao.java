package com.appdirect.dao;

import org.springframework.data.repository.CrudRepository;

import com.appdirect.pojo.UserRole;

public interface UserRoleDao extends CrudRepository<UserRole,Integer> {


	@Override
	<S extends UserRole> S save(S UserRole);

	
}
