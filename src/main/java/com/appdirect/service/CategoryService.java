package com.appdirect.service;

import java.util.List;
import java.util.Optional;

import com.appdirect.pojo.Category;

public interface CategoryService {
	public List<Category> findAll();
	public Category findByCategoryName(String prodCatName);
	public Category save(Category category);
	public Optional<Category> findById(Integer integer);
	public Category findAllById(Integer id);
}
