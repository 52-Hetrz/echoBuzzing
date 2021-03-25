package com.example.echoBuzzing.model;

public class Song {
	
	private Integer id;
	private String songName;
	private String songSinger;
	private String songAlbum;
	private String Lyric;
	private String songComment;
	private Integer playTimes;
	private String songAddress;
	private String pictureAddress;
	
	public String getPictureAddress() {
		return pictureAddress;
	}

	public void setPictureAddress(String pictureAddress) {
		this.pictureAddress = pictureAddress;
	}

	public Song() {
		
	}
	
	public Song(String songNameString) {
		this.id=Integer.MIN_VALUE;
		this.songName=songNameString;
		this.songSinger=" ";
		this.songAlbum=" ";
		this.Lyric=" ";
		this.songComment=" ";
		this.playTimes=Integer.MIN_VALUE;
		this.songAddress=" ";
		this.pictureAddress=" ";
	}
	
	public String getSongAddress() {
		return songAddress;
	}
	public void setSongAddress(String songAddress) {
		this.songAddress = songAddress;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSongName() {
		return songName;
	}
	public void setSongName(String songName) {
		this.songName = songName;
	}
	public String getSongSinger() {
		return songSinger;
	}
	public void setSongSinger(String songSinger) {
		this.songSinger = songSinger;
	}
	public String getSongAlbum() {
		return songAlbum;
	}
	public void setSongAlbum(String songAlbum) {
		this.songAlbum = songAlbum;
	}
	public String getLyric() {
		return Lyric;
	}
	public void setLyric(String lyric) {
		Lyric = lyric;
	}
	public String getSongComment() {
		return songComment;
	}
	public void setSongComment(String songComment) {
		this.songComment = songComment;
	}

	public Integer getPlayTimes() {
		return playTimes;
	}
	public void setPlayTimes(Integer playTimes) {
		this.playTimes = playTimes;
	}
	
	@Override
	public String toString() {
		
		return this.getSongName()+"  "+this.getSongSinger()+"  "
				+this.getId(); 
	}

}
