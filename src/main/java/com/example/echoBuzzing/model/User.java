package com.example.echoBuzzing.model;


public class User {

	
	private Integer id;
	private String name;
	private String password;
	private String email;
	private String date;
	private String image;
	
	
	public User(Integer id,String name,String password,String email,String date,String image,String instroduction) {
		this.id=id;
		this.name=name;
		this.password=password;
		this.email=email;
		this.date=date;
		this.image="../static/images/user/user.png";
	}
	
	public User(String name,String password,String email,String date) {
		this.name=name;
		this.password=password;
		this.email=email;
		this.date=date;
		this.image="../static/images/user/user.png";
		
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", date=" + date
				+ ", image=" + image + "]";
	}

	
	
	
	
	
}
