//package com.appdirect.service;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.appdirect.dao.AdminDao;
//import com.appdirect.pojo.Category;
//import com.appdirect.pojo.Product;
//
//@Service
//public class AdminServiceImplementation implements AdminService {
//	
//	@Autowired
//	AdminDao adminDao;
//	@Override
//	public Category save(Category category) {
//		adminDao.save(category);
//		return category;
//	}
//
//	@Override
//	public Product save(Product product) {
//		return adminDao.save(product);
//	}
//	
//
//}
