package com.appdirect.service;

import java.util.List;
import java.util.Optional;

import com.appdirect.pojo.Product;

public interface ProductService {
	public List<Product> findAll();
	public Product save(Product product);
	public Optional<Product> findById(Integer id);
	public void deleteById(Integer id);
	public List<Product> findAllByProdCatid(Integer id);
}
