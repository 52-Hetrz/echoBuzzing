package com.example.echoBuzzing.VO;

import java.util.List;

import com.example.echoBuzzing.model.Singer;
import com.example.echoBuzzing.model.Song;
import com.example.echoBuzzing.model.SongList;


/**
 * 	返回给前端的歌手类
 * 	id为歌手id	name为歌手名字 		introduction为歌手简介	
 * 	image为歌手图片存放路径	albums为歌手的专辑
 * @author life
 *
 */
public class SingerVO {
	private Integer id;
	private String name;
	private String introduction;
	private String image;
	List<SongList> albums;
	List<Song> hotSongs;
	List<Song> newSongs;
	
	public SingerVO(Singer singer,List<SongList> albums,List<Song> hotSongs,List<Song> newSongs) {
		this.id=singer.getId();
		this.name=singer.getName();
		this.introduction=singer.getIntroduction();
		this.image=singer.getImage();
		this.albums=albums;
		this.hotSongs=hotSongs;
		this.newSongs=newSongs;
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

	public List<SongList> getAlbums() {
		return albums;
	}

	public void setAlbums(List<SongList> albums) {
		this.albums = albums;
	}

	public List<Song> getHotSongs() {
		return hotSongs;
	}

	public void setHotSongs(List<Song> hotSongs) {
		this.hotSongs = hotSongs;
	}
	
	

	public List<Song> getNewSongs() {
		return newSongs;
	}

	public void setNewSongs(List<Song> newSongs) {
		this.newSongs = newSongs;
	}

	@Override
	public String toString() {
		return "SingerVO [id=" + id + ", name=" + name + ", introduction=" + introduction + ", image=" + image
				+ ", albums=" + albums + ", hotSongs=" + hotSongs + ", newSongs=" + newSongs + "]";
	}

	
}
