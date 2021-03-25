package com.example.echoBuzzing.model;

import java.util.Date;

import com.example.echoBuzzing.utils.DateUtils;

/**
 * @author asus
 * @Description:歌曲评论信息的存储实体，属性与数据库songcomment中的格式相对应
 *
 */
public class SongComment {
	
	private Integer id;
	private String songComment;
	private Integer userID;
	private Date createTime;
	private String userName;
	
	public SongComment() {
		
	}
	
	public SongComment(Integer idInteger,String songCommentString,Integer userIDInteger,
			Date createTimeDate,String userNameString) {
		this.id=idInteger;
		this.songComment=songCommentString;
		this.userID=userIDInteger;
		this.createTime=createTimeDate;
		this.userName=userNameString;
	}
	
	public SongComment(String songCommentString) {
		this.id=Integer.MIN_VALUE;
		this.userID=Integer.MIN_VALUE;
		this.songComment=songCommentString;
	 	Date date=DateUtils.getCurrentDate();
	 	this.createTime=date;
	 	this.userName="无用户进行评价";
	}
	
	public SongComment(String songCommentString,Integer userID,String userNameString) {
		this.songComment=songCommentString;
		this.userID=userID;
		this.userName=userNameString;
	}
	
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public Integer getUserID() {
		return userID;
	}

	public void setUserID(Integer userID) {
		this.userID = userID;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSongComment() {
		return songComment;
	}
	public void setSongComment(String songComment) {
		this.songComment = songComment;
	}
	
	
	
	@Override
	public String toString() {
		
		return this.getSongComment()+"  "+this.getUserID()+"  "
			+this.getUserName()+"  "+this.getId()+"  "+this.getCreateTime();
	}

}
