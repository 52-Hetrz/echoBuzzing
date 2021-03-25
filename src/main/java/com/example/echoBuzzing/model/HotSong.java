package com.example.echoBuzzing.model;

public class HotSong {
	
	//HotSong实体类在数据库中的id
	private Integer id;
	//对应的热歌在数据库song中的id号
	private String hotSongIdString;
	//歌手id
	private Integer userID;
	
	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getHotSongIdString() {
		return hotSongIdString;
	}
	public void setHotSongIdString(String hotSongIdString) {
		this.hotSongIdString = hotSongIdString;
	}
	
	@Override
	public String toString() {
		
		return this.id+"  "+this.hotSongIdString+"  "+this.getUserID();
	}

}
