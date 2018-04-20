package com.appdirect.controller;

import java.sql.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.appdirect.pojo.Category;
import com.appdirect.pojo.Product;
import com.appdirect.service.CategoryService;
import com.appdirect.service.ProductService;

@Controller
@RequestMapping("/adminController")
public class AdminController {
	@Autowired
	CategoryService categoryService;
	@Autowired
	ProductService productService;

	@RequestMapping(method = RequestMethod.GET, value = "/adminHome")
	public String showHomePage() {
		return "/Admin/adminhome";
	}

	@ModelAttribute("categorylist")
	public List<Category> getCategoryList() {
		List<Category> categoryList = categoryService.findAll();
		return categoryList;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/category")
	public String Category() {
		System.out.println(getCategoryList());
		return "/Admin/categoryList";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/addCategory")
	public String addCategory() {
		return "/Admin/category";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/addCategory")
	public String addCategory(Category category) {
		System.out.println("abc");
		System.out.println(category);
			category.setCreatedOn(Date.valueOf(java.time.LocalDate.now()));
			category.setUpdatedOn(Date.valueOf(java.time.LocalDate.now()));
		categoryService.save(category);
		return "/Admin/category";
	}
	@RequestMapping(method = RequestMethod.GET, value = "/editCategory/{id}")
	public String editCategory(@PathVariable Integer id,ModelMap map) {
		System.out.println("hjhjhjhjdfdf");

		Category categories=categoryService.findById(id).get();
		System.out.println(categories.toString());
		map.put("category",categories);
		return "/Admin/editcategory";
	}
	@RequestMapping(method = RequestMethod.POST, value = "/editCategoryAfterList")
	public String editPostCategoryAfterClick( Category category)
	{
		Category cat=categoryService.findById(category.getId()).get();
		cat.setParentId(category.getParentId());
		cat.setCategoryName(category.getCategoryName());
		cat.setUpdatedOn(Date.valueOf(java.time.LocalDate.now()));

		categoryService.save(cat);
		System.out.println(category);
		return "/Admin/categoryList";
	}
	@ModelAttribute("categoryList")
	public List<String> getCategoryNames() {
		List<Category> categoryList = categoryService.findAll();
		List<String> categoryNames = new LinkedList<>();
		for (Category cat : categoryList
				) {
			categoryNames.add(cat.getCategoryName());

		}
		return categoryNames;
	}

	@ModelAttribute("productList")
	public List<Product> getProductList() {
		List<Product> productList = productService.findAll();
		return productList;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/productList")
	public String productPage() {
		return "/Admin/productList";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/product")
	public String addProduct(Product product) {
		return "/Admin/addProduct";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/product")
	public String addProduct(@RequestParam(value = "prodCategory") String cat, Product product) {
		Category catid = categoryService.findByCategoryName(cat);
		product.setProdCatid(catid.getId());
		productService.save(product);
		System.out.println(product);
		return "/Admin/addProduct";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/editProduct")
	@ResponseBody
	public String editProduct(Product product) {
		System.out.println(product.getProdName() + " " + product.getProdPrice() + " " + product.getProdDescription());
		Optional<Product> productoption = productService.findById(product.getId());
		Product product1 = productoption.get();
		System.out.println(product1);
		product1.setProdName(product.getProdName());
		product1.setProdPrice(product.getProdPrice());
		product1.setProdDescription(product.getProdDescription());
		productService.save(product1);
		return "success";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/deleteProduct")
	public void deleteProduct(@RequestParam(value = "id") Integer id) {
		System.out.println(id);
		productService.deleteById(id);
	}
	

//	@RequestMapping(method = RequestMethod.GET, value = "/catProduct/{id}")
//	public String catProduct(@PathVariable Integer id, ModelMap map) {
//		System.out.println("abcd");
//
//		ArrayList<Product> products = (ArrayList<Product>) productService.findAllByProdCatid(id);
//		map.put("pro", products);
//		System.out.println(products);
//		return "/Admin/catproduct";
//	}

}
