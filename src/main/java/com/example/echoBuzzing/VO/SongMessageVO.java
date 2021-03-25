package com.example.echoBuzzing.VO;

import java.util.List;

import com.example.echoBuzzing.model.Song;
import com.example.echoBuzzing.model.SongComment;


/**
 * @author asus
 * @Description:将歌曲的信息提取出来后存放在该类中，该类作为后端向前端传送信息的载体
 *
 */
public class SongMessageVO {
	
	private Song song;
	private List<SongComment> comments;
	
	
	public Song getSong() {
		return song;
	}
	public void setSong(Song song) {
		this.song = song;
	}
	public List<SongComment> getComments() {
		return comments;
	}
	public void setComments(List<SongComment> comments) {
		this.comments = comments;
	}
	
	public String toString() {
		
		return song.getSongName()+song.getId()+song.getSongAlbum()
				+comments.get(1).getSongComment()+comments.get(0).getId();
	}
	
}
