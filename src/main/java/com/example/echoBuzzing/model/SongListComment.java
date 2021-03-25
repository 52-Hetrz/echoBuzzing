package com.example.echoBuzzing.model;

import java.sql.Date;

public class SongListComment {
	private Integer songListCommentId;
	private Integer songListId;
	private String userName;
	private String comment;
	private Date createTime;
	
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
	public Integer getSongListCommentId() {
		return songListCommentId;
	}
	public void setSongListCommentId(Integer songListCommentId) {
		this.songListCommentId = songListCommentId;
	}
	public Integer getSongListId() {
		return songListId;
	}
	public void setSongListId(Integer songListId) {
		this.songListId = songListId;
	}
	public String getUserName() {
		return userName;
	}
	
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	public Date getCreateTime() {
		return createTime;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	
	
}
