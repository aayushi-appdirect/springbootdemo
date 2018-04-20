package com.appdirect.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.appdirect.pojo.Category;
@Repository
@Transactional
public interface CategoryDao extends CrudRepository<Category,Integer> {
	@Override
	List<Category> findAll() ;

	@Override
	<S extends Category> S save(S s);

	Category findByCategoryName(String prodCatName);

	@Override
	Optional<Category> findById(Integer integer);

	
	Category findAllById(Integer id);
}
