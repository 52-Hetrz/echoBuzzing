package com.example.echoBuzzing.model;



import java.sql.Date;




public class SongList {
	private Integer songListId;
	private String songListName;
	private String songListIntro;
	private Integer userId;
	private String label;
	private String songListImg;
	private Date createTime;
	private Date updateTime;
	private Integer commentNumber;
	private Integer playNumber;
	private Integer shareNumber;
	private Integer collectNumber;
	private Integer collectSongListId;

	
	public String getSongListName() {
		return songListName;
	}
	
	public void setSongListName(String songListName) {
		this.songListName = songListName;
	}
	
	public String getSongListIntro() {
		return songListIntro;
	}
	public void setSongListIntro(String songListIntro) {
		this.songListIntro = songListIntro;
	}
	
	
	public String getLabel() {
		return label;
	}
	
	public void setLabel(String label) {
		this.label = label;
	}
	public String getSongListImg() {
		return songListImg;
	}
	public void setSongListImg(String songListImg) {
		this.songListImg = songListImg;
	}
	
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}


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
	
	public Integer getUserId() {
		return userId;
	}
	
	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	
	public Integer getCollectSongListId() {
		return collectSongListId;
	}

	public void setCollectSongListId(Integer collectSongListId) {
		this.collectSongListId = collectSongListId;
	}

	@Override
	public String toString() {
		return "SongList [songListId=" + songListId + ", songListName=" + songListName + ", songListIntro="
				+ songListIntro + ", userId=" + userId + ", label=" + label + ", songListImg=" + songListImg
				+ ", createTime=" + createTime + ", updateTime=" + updateTime + ", commentNumber=" + commentNumber
				+ ", playNumber=" + playNumber + ", shareNumber=" + shareNumber + ", collectNumber=" + collectNumber
				+ ", collectSongListId=" + collectSongListId + "]";
	}

	
	
}
