package com.appdirect.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appdirect.dao.CategoryDao;
import com.appdirect.pojo.Category;
@Service
public class CategoryServiceImplementation implements CategoryService {
	@Autowired
	CategoryDao categoryDao;
	@Override
	public List<Category> findAll() {
		return categoryDao.findAll();
	}

	@Override
	public Category findByCategoryName(String prodCatName) {
		return categoryDao.findByCategoryName(prodCatName);
	}

	@Override
	public Category save(Category category) {
		return categoryDao.save(category);
	}

	@Override
	public Optional<Category> findById(Integer integer) {
		return categoryDao.findById(integer);
	}

	@Override
	public Category findAllById(Integer id) {
		return categoryDao.findAllById(id);
	}

}
