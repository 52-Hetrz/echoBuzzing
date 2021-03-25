package com.example.echoBuzzing.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.echoBuzzing.model.HotSong;

@Repository
@Mapper
public interface HotSongMapper {
	
	public HotSong getHotSongsbyuserID(Integer userID);
	
	public int updateHotSongs(HotSong hotSong);
	
	public int addHotSongs(HotSong hotSong);
	
	public int deleteHotSongs(Integer userID);
}
