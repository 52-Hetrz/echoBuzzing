package com.example.echoBuzzing.VO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.echoBuzzing.model.CollectSongList;
import com.example.echoBuzzing.model.SongList;
import com.example.echoBuzzing.model.User;
import com.example.echoBuzzing.service.impl.UserServiceImpl;


/**
 * 	该类为返回前端的用户类，存储着用户的基本信息，以及用户的歌单
 * 	用户基本信息包括 id,name,password,email,date
 * 	collectSongLists为一个存储着用户所有CollectSongList（用户收藏歌单）的List对象，
 * 	songLists为一个存储着用户所有SongList（用户创建歌单）的List对象
 * 	每一个属性均有getter和setter方法来获取或设置
 * 	可以使用toString方法来显示所有的属性
 * @author life
 *
 */
public class UserVO {
	private Integer id;
	private String name;
	private String password;
	private String email;
	private String date;
	private String image;
	private List<SongList> collectSongLists;
	private List<SongList> songLists;
	
	public UserVO(User user,List<SongList> collectSongLists,List<SongList> songLists) {
		this.setId(user.getId());
		this.setName(user.getName());
		this.setPassword(user.getPassword());
		this.setEmail(user.getEmail());
		this.setDate(user.getDate());
		this.setImage(user.getImage());
		this.setSongLists(songLists);
		this.setCollectSongLists(collectSongLists);
		
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


	public List<SongList> getCollectSongLists() {
		return collectSongLists;
	}


	public void setCollectSongLists(List<SongList> collectSongLists) {
		this.collectSongLists = collectSongLists;
	}


	public List<SongList> getSongLists() {
		return songLists;
	}


	public void setSongLists(List<SongList> songLists) {
		this.songLists = songLists;
	}

	

	public String getImage() {
		return image;
	}


	public void setImage(String image) {
		this.image = image;
	}


	@Override
	public String toString() {
		return "UserVO [id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", date=" + date
				+ ", imageString=" + image + ", collectSongLists=" + collectSongLists + ", songLists=" + songLists
				+ "]";
	}


	
	
	
	
	
}
