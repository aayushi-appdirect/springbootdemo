package com.appdirect.controller;

import java.sql.Date;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.appdirect.dao.CategoryDao;
import com.appdirect.pojo.Address;
import com.appdirect.pojo.Category;
import com.appdirect.pojo.User;
import com.appdirect.pojo.UserRole;
import com.appdirect.service.AddressService;
import com.appdirect.service.CategoryService;
import com.appdirect.service.ProductService;
import com.appdirect.service.UserService;

@Controller
@RequestMapping("/userController")
public class UserController {
	@Autowired
	UserService userService;
	@Autowired
	AddressService addressService;
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	CategoryService categoryService;
	@Autowired
	ProductService productService;
	
	@RequestMapping(method = RequestMethod.GET, value = "/homePage")
	public String homePage(){
		return "index";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/home")
	public @ResponseBody List<String> showHomePage() {
		System.out.println("in home");
		List<Category> categoryList = categoryService.findAll();
		List<String> categoryNames = new LinkedList<>();
		for (Category cat : categoryList) {
			categoryNames.add(cat.getCategoryName());
		}
		return categoryNames;
	}
	@RequestMapping(method = RequestMethod.GET, value = "/catProduct")
	public String catProduct(Category category){
		System.out.println("abcde");
		System.out.println(category);
		return "hello";

		
	}

	@RequestMapping(method = RequestMethod.GET, value = "/reg")
	public String showRegistrationForm() {
		System.out.println("in reg");
		return "/Registration/register";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/reg")
	public String Registration(User user, Address address, UserRole role) {
		System.out.println("in post");
		user.setActive(true);
		user.setRoleId(1);
		user.setCreatedOn(Date.valueOf(java.time.LocalDate.now()));
		user = userService.save(user);
		address.setUser(user);
		System.out.println(address);
		addressService.save(address);
		role.setUserId(user.getId());
		role.setRoleId(user.getRoleId());
		userService.save(role);
		System.out.println(role);
		System.out.println(user);
		return "/Login/login";

	}

	@RequestMapping(method = RequestMethod.GET, value = "/login")
	public String Login() {
		System.out.println("in login get");
		return "/Login/login";
		}

	@RequestMapping(method = RequestMethod.POST, value = "/login")
	public String loginUser(User user, HttpSession session) {
		User user1 = userService.loginUser(user.getUserName(), user.getUserPassword());
		System.out.println(user1);
		if (user1 != null) {
			session.setAttribute("Userdetails", user1);
			if (user1.getRoleId() != 1) {
				return "/Admin/adminhome";
			} else
				return "index";
			}
		return "/Registration/register";
	}
	@RequestMapping(method = RequestMethod.GET, value = "/buyNow")
	public String buyNow()
	{
		System.out.println("in buynow");

		productService.findAll();
		return "/Cust/buyNow";
	}
}


