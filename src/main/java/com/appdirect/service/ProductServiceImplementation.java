package com.appdirect.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appdirect.dao.ProductDao;
import com.appdirect.pojo.Product;
@Service
public class ProductServiceImplementation implements ProductService {
	@Autowired
	ProductDao productDao;
	@Override
	public List<Product> findAll() {
		return productDao.findAll();
	}

	@Override
	public Product save(Product product) {
		return productDao.save(product);
	}

	@Override
	public Optional<Product> findById(Integer id) {
		return productDao.findById(id);
	}

	@Override
	public void deleteById(Integer id){
		productDao.deleteById(id);
	}

	@Override
	public List<Product> findAllByProdCatid(Integer id) {
		return productDao.findAllByProdCatid(id);
	}
}
