package com.example.echoBuzzing.model;

import java.sql.Date;

public class CollectSongList {
	private Integer collectSongListId;
	private Integer userId;
	private Integer songListId;
	private Date createTime;
	
	public Integer getCollectSongListId() {
		return collectSongListId;
	}
	public void setCollectSongListId(Integer collectSongListId) {
		this.collectSongListId = collectSongListId;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Integer getSongListId() {
		return songListId;
	}
	public void setSongListId(Integer songListId) {
		this.songListId = songListId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	
}
