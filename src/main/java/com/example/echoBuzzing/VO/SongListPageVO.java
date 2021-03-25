package com.example.echoBuzzing.VO;

import java.util.List;

import com.example.echoBuzzing.model.Song;
import com.example.echoBuzzing.model.SongListComment;

public class SongListPageVO {
	private Integer songListId;
	private String songListName;
	private String songListIntro;
	private Integer userId;
	private String label;
	private String songListImg;
	private String createTime;
	private String updateTime;
	private Integer commentNumber;
	private Integer playNumber;
	private Integer shareNumber;
	private Integer collectNumber;
	
	//创建人,需要用到userService
	
	//所有歌曲，要用到songService
	private List<Song> songs;
	
	private List<SongListComment> songListComments;
	
	
	public Integer getCollectNumber() {
		return collectNumber;
	}
	public void setCollectNumber(Integer collectNumber) {
		this.collectNumber = collectNumber;
	}
    
	public Integer getCommentNumber() {
		return commentNumber;
	}
	public void setCommentNumber(Integer commentNumber) {
		this.commentNumber = commentNumber;
	}

	public List<Song> getSongs() {
		return songs;
	}

	public void setSongs(List<Song> songs) {
		this.songs = songs;
	}


	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public Integer getPlayNumber() {
		return playNumber;
	}
	public void setPlayNumber(Integer playNumber) {
		this.playNumber = playNumber;
	}
	
	public Integer getShareNumber() {
		return shareNumber;
	}
	public void setShareNumber(Integer shareNumber) {
		this.shareNumber = shareNumber;
	}
	
	
	public Integer getSongListId() {
		return songListId;
	}
	public void setSongListId(Integer songListId) {
		this.songListId = songListId;
	}
	public String getSongListImg() {
		return songListImg;
	}
	
	public void setSongListImg(String songListImg) {
		this.songListImg = songListImg;
	}
	
	public String getSongListIntro() {
		return songListIntro;
	}
	public void setSongListIntro(String songListIntro) {
		this.songListIntro = songListIntro;
	}
	
	public String getSongListName() {
		return songListName;
	}
	public void setSongListName(String songListName) {
		this.songListName = songListName;
	}
	
	
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	
	public String getCreateTime() {
		return createTime;
	}
	
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
	
	public String getUpdateTime() {
		return updateTime;
	}
	
	
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public List<SongListComment> getSongListComments() {
		return songListComments;
	}
	
	public void setSongListComments(List<SongListComment> songListComments) {
		this.songListComments = songListComments;
	}
	
	
	
}
