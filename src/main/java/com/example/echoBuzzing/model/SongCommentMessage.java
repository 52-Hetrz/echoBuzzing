package com.example.echoBuzzing.model;


/**
 * @author asus
 * @Description:用于存储前端传递的关于对于特定歌曲的新增评论的信息
 * @param:songComment存储用户对该歌曲的歌曲评论，songID存储被评论的歌曲在数据库song
  *中的id
 *
 */
public class SongCommentMessage {
	
	//评论的内容
	private String songCommentContentString;
	//评论的歌曲的id
	private Integer songID;
	//评论的用户的id
	private Integer userID;
	//评论的用户的昵称
	private String userName;
	
	public SongCommentMessage(Integer songID,Integer userID,String songCommentString
			,String userNameString) {
		this.userID=userID;
		this.songCommentContentString=songCommentString;
		this.songID=songID;
		this.userName=userNameString;
	}
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public SongCommentMessage() {
		// TODO Auto-generated constructor stub
	}
	public String getSongCommentContentString() {
		return songCommentContentString;
	}
	public void setSongCommentContentString(String songCommentContentString) {
		this.songCommentContentString = songCommentContentString;
	}
	
	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	
	public Integer getSongID() {
		return songID;
	}
	public void setSongID(Integer songID) {
		this.songID = songID;
	}
	
	

}
