





package com.appdirect.pojo;

import java.sql.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="Orders")
public class Orders {
	
	private Integer id;
//	private Integer orderUserid;
	private Date orderDate;
	@Enumerated(EnumType.STRING)
	private OrderStatus orderStatus;
	private Date orderDeliverydate;
	private Integer orderProdquantity;
	//private Integer orderProdid
	private Integer orderPaymentid;
	private String orderPaymentmode;
	private Double orderAmount;
	private List<Product> products;


	public Orders() {
	}

	public Orders(Integer id,  Date orderDate, OrderStatus orderStatus, Date orderDeliverydate, Integer orderProdquantity, Integer orderPaymentid, String orderPaymentmode, Double orderAmount) {
		this.id = id;
		this.orderDate = orderDate;
		this.orderStatus = orderStatus;
		this.orderDeliverydate = orderDeliverydate;
		this.orderProdquantity = orderProdquantity;
		this.orderPaymentid = orderPaymentid;
		this.orderPaymentmode = orderPaymentmode;
		this.orderAmount = orderAmount;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}


	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public OrderStatus getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(OrderStatus orderStatus) {
		this.orderStatus = orderStatus;
	}

	public Date getOrderDeliverydate() {
		return orderDeliverydate;
	}

	public void setOrderDeliverydate(Date orderDeliverydate) {
		this.orderDeliverydate = orderDeliverydate;
	}

	public Integer getOrderProdquantity() {
		return orderProdquantity;
	}

	public void setOrderProdquantity(Integer orderProdquantity) {
		this.orderProdquantity = orderProdquantity;
	}


	public Integer getOrderPaymentid() {
		return orderPaymentid;
	}

	public void setOrderPaymentid(Integer orderPaymentid) {
		this.orderPaymentid = orderPaymentid;
	}

	public String getOrderPaymentmode() {
		return orderPaymentmode;
	}

	public void setOrderPaymentmode(String orderPaymentmode) {
		this.orderPaymentmode = orderPaymentmode;
	}

	public Double getOrderAmount() {
		return orderAmount;
	}

	public void setOrderAmount(Double orderAmount) {
		this.orderAmount = orderAmount;
	}
	@Transient
	@OneToMany(mappedBy ="order",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	@Override
	public String toString() {
		return "Order{" +
				"id=" + id +
				", orderDate=" + orderDate +
				", orderStatus=" + orderStatus +
				", orderDeliverydate=" + orderDeliverydate +
				", orderProdquantity=" + orderProdquantity +
				", orderPaymentid=" + orderPaymentid +
				", orderPaymentmode='" + orderPaymentmode + '\'' +
				", orderAmount=" + orderAmount +
				'}';
	}
}
