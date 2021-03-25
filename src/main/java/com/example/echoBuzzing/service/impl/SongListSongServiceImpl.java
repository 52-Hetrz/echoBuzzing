package com.example.echoBuzzing.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.echoBuzzing.mapper.SongListSongMapper;
import com.example.echoBuzzing.model.SongListSong;
import com.example.echoBuzzing.service.SongListSongService;

@Service
public class SongListSongServiceImpl implements SongListSongService{
	
	@Autowired
    private SongListSongMapper mapper;
	
	

	@Override
	public List<SongListSong> findBySongListId(int songListId) {
		// TODO Auto-generated method stub
		return mapper.findBySongListId(songListId);
	}

	@Override
	public int insertOne(Integer songListId,Integer songId) {
		// TODO Auto-generated method stub
		return mapper.insertOne(songListId,songId);
	}

	@Override
	public int deleteBySongListSongId(int songListSongId) {
		// TODO Auto-generated method stub
		return mapper.deleteBySongListSongId(songListSongId);
	}
    
	@Override
	public int deleteBySongListIdAndSongId(int songListId,int songId){
		// TODO Auto-generated method stub
		return mapper.deleteBySongListIdAndSongId(songListId,songId);
	}
	
	@Override
	public List<SongListSong> findBySongId(Integer songId) {
		// TODO Auto-generated method stub
		return mapper.findBySongId(songId);
	}

	@Override
	public SongListSong findBySongListIdAndSongId(int songListId, int songId) {
		// TODO Auto-generated method stub
		return mapper.findBySongListIdAndSongId(songListId, songId);
	}

}
