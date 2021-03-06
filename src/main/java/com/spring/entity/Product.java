package com.spring.entity;

import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
@Table(name="tblproduct")
public class Product {

	@Id
	@Column(name="idProduct")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idProduct;
	
	@Column(name="nameProduct")
	private String nameProduct;
	
	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getUsedTime() {
		return usedTime;
	}

	public void setUsedTime(String usedTime) {
		this.usedTime = usedTime;
	}

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="idProduct")
	@OnDelete(action = OnDeleteAction.CASCADE)
	private Invoicedetails invoicedetails;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="idCategory")
	 @OnDelete(action = OnDeleteAction.CASCADE)
	private Category category;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="username")
	 @OnDelete(action = OnDeleteAction.CASCADE)
	 private User user;
	
	@Column(name="price")
	private double price;
	@Column(name="usedTime")
	private String usedTime;
	public int getIdProduct() {
		return idProduct;
	}

	public void setIdProduct(int idProduct) {
		this.idProduct = idProduct;
	}

	public String getNameProduct() {
		return nameProduct;
	}

	public void setNameProduct(String nameProduct) {
		this.nameProduct = nameProduct;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Column(name="date")
	private Timestamp date;
	
	@Column(name="count")
	private int count;
	
	@Column(name="title")
	private String title;
	
	@Column(name="image")
	private String image;
}
