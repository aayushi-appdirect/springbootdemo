package com.appdirect.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "Product")
public class Product {
	
	private Integer id;
	private String prodName;
	private String prodCategory;
	private Double prodPrice;
	private String prodImage;
	private String prodDescription;
	private Double prodRating;
	private Integer prodCatid;
	private Orders orders;
	private Category category;

	public Product() {
	}


	public Product(Integer id, String prodName, String prodCategory, Double prodPrice, String prodImage, String prodDescription, Double prodRating, Integer prodCatid) {
		this.id = id;
		this.prodName = prodName;
		this.prodCategory = prodCategory;
		this.prodPrice = prodPrice;
		this.prodImage = prodImage;
		this.prodDescription = prodDescription;
		this.prodRating = prodRating;
		this.prodCatid = prodCatid;
	}

	
	public Product(String prodName, String prodCategory, Double prodPrice, String prodImage, String prodDescription, Double prodRating, Integer prodCatid, Orders orders, Category category) {
		this.prodName = prodName;
		this.prodCategory = prodCategory;
		this.prodPrice = prodPrice;
		this.prodImage = prodImage;
		this.prodDescription = prodDescription;
		this.prodRating = prodRating;
		this.prodCatid = prodCatid;
		this.orders = orders;
		this.category = category;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public String getProdCategory() {
		return prodCategory;
	}

	public void setProdCategory(String prodCategory) {
		this.prodCategory = prodCategory;
	}

	public Double getProdPrice() {
		return prodPrice;
	}

	public void setProdPrice(Double prodPrice) {
		this.prodPrice = prodPrice;
	}

	public String getProdImage() {
		return prodImage;
	}

	public void setProdImage(String prodImage) {
		this.prodImage = prodImage;
	}

	public String getProdDescription() {
		return prodDescription;
	}

	public void setProdDescription(String prodDescription) {
		this.prodDescription = prodDescription;
	}

	public Double getProdRating() {
		return prodRating;
	}

	public void setProdRating(Double prodRating) {
		this.prodRating = prodRating;
	}

	public Integer getProdCatid() {
		return prodCatid;
	}

	public void setProdCatid(Integer prodCatid) {
		this.prodCatid = prodCatid;
	}
	@ManyToOne
	@JoinColumn(name = "orderProdid",nullable = false)
	@Transient
	public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}
@ManyToOne
@JoinColumn(name = "prod_catid",nullable = false)
@Transient
	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "Product{" +
				"id=" + id +
				", prodName='" + prodName + '\'' +
				", prodCategory='" + prodCategory + '\'' +
				", prodPrice=" + prodPrice +
				", prodImage='" + prodImage + '\'' +
				", prodDescription='" + prodDescription + '\'' +
				", prodRating=" + prodRating +
				", prodCatid=" + prodCatid +
				", orders=" + orders +
				", category=" + category +
				'}';
	}
}

