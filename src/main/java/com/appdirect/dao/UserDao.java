package com.appdirect.dao;

import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.appdirect.pojo.User;


@Transactional
@Repository

public interface UserDao extends CrudRepository<User, Integer> {

	@Override
	<S extends User> S save(S User);

	User findByUserNameAndUserPassword(String userName, String userPassword);


}



