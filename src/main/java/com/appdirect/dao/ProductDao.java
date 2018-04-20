package com.appdirect.dao;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.appdirect.pojo.Product;
@Transactional
@Repository
public interface ProductDao extends CrudRepository<Product,Integer> {
	@Override
	List<Product> findAll();

	@Override
	<S extends Product> S save(S Product);

	@Override
	 Optional<Product>findById(Integer integer);

	@Override
	void deleteById(Integer id);

	
	List<Product> findAllByProdCatid(Integer id);
}
