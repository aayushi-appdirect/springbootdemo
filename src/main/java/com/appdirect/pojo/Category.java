package com.appdirect.pojo;

import java.util.Date;
import java.util.List;
import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

@Entity
@Table(name = "Category")
public class Category {
	private Integer id;
	private String categoryName;
	private Integer parentId;
	private Date createdOn;
	private Date updatedOn;
	private List<Product> products;

	public Category() {
	}

	public Category(Integer id,String categoryName, Integer parentId, Date createdOn, Date updatedOn) {
		this.id = id;
		this.categoryName = categoryName;
		this.parentId = parentId;
		this.createdOn = createdOn;
		this.updatedOn = updatedOn;
	}

	public Category(String categoryName, Integer parentId, Date createdOn, Date updatedOn) {
		this.categoryName = categoryName;
		this.parentId = parentId;
		this.createdOn = createdOn;
		this.updatedOn = updatedOn;
	}

	public Category(Integer id, String categoryName, Integer parentId, Date createdOn, Date updatedOn, List<Product> products) {
		this.id = id;
		this.categoryName = categoryName;
		this.parentId = parentId;
		this.createdOn = createdOn;
		this.updatedOn = updatedOn;
		this.products = products;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	@Temporal(TemporalType.DATE)
	public Date getCreatedOn() {
		return createdOn;
	}
	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}
	@Temporal(TemporalType.DATE)
	public Date getUpdatedOn() {
		return updatedOn;
	}

	public void setUpdatedOn(Date updatedOn) {
		this.updatedOn = updatedOn;
	}
	@Transient
	@OneToMany(mappedBy ="category",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;
		Category category = (Category) o;
		return Objects.equals(id, category.id);
	}

	@Override
	public int hashCode() {

		return Objects.hash(id);
	}

	@Override
	public String toString() {
		return "Category{" +
				"id=" + id +
				", categoryName='" + categoryName + '\'' +
				", parentId=" + parentId +
				", createdOn=" + createdOn +
				", updatedOn=" + updatedOn +
				'}';
	}
}
