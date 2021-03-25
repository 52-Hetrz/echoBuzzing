package com.example.echoBuzzing.service;

import java.util.List;

import com.example.echoBuzzing.model.HotSong;
import com.example.echoBuzzing.model.Song;

public interface HotSongService {
	
	public HotSong getHotSongsbyuserID(Integer userID);
	
	public int updateHotSongs(HotSong hotSong);
	
	public int addHotSongs(HotSong hotSong);
	
	public int deleteHotSongs(Integer userID);
	
	public List<Song> getHotSongListbyUserName(Integer userID);

}
