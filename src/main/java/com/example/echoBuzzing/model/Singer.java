package com.example.echoBuzzing.model;


public class Singer {
	private Integer id;
	private String name;
	private String introduction;
	private String image;
	
	
	public Singer(Integer id,String name,String introduction,String image,String email,String passwordString,String date) {
		this.id=id;
		this.name=name;
		this.introduction=introduction;
		this.image=image;
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


	public String getIntroduction() {
		return introduction;
	}


	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}


	public String getImage() {
		return image;
	}


	public void setImage(String image) {
		this.image = image;
	}


	@Override
	public String toString() {
		return "Singer [id=" + id + ", name=" + name + ", introduction=" + introduction + ", image=" + image + "]";
	}
	
	
}
