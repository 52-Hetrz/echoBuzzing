package com.example.echoBuzzing.service.impl;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.echoBuzzing.mapper.SongListMapper;
import com.example.echoBuzzing.model.SongList;
import com.example.echoBuzzing.model.SongListSong;
import com.example.echoBuzzing.service.SongListService;
import com.example.echoBuzzing.service.SongListSongService;

@Service
public class SongListServiceImpl implements SongListService{
	
	
	@Autowired
	private SongListMapper mapper;
	
	@Autowired
	private SongListSongService songListSongService; 
	

	@Override
	public List<SongList> findByUserId(int userId) {
		// TODO Auto-generated method stub
		return mapper.findByUserId(userId);
	}

	@Override
	public SongList findBySongListId(int songListId) {
		// TODO Auto-generated method stub
		return mapper.findBySongListId(songListId);
	}

	@Override
	public int insertOne(String songListName,int userId,Date createTime,String label,String songListImg) {
		// TODO Auto-generated method stub
		return mapper.insertSongList(songListName,userId,createTime,label,songListImg,0);
	}
	


	@Override
	public int deleteOne(int songListId) {
		// TODO Auto-generated method stub
		List<SongListSong> songListSongs=songListSongService.findBySongListId(songListId);
		for(SongListSong songListSong : songListSongs) {
			songListSongService.deleteBySongListSongId(songListSong.getSongListSongId());
		}
		return mapper.deleteBySongListId(songListId);
	}

	@Override
	public List<SongList> searchBySongListName(String content) {
		// TODO Auto-generated method stub
		return mapper.searchBySongListName(content);
	}

	@Override
	public List<SongList> findAll() {
		// TODO Auto-generated method stub
		return mapper.findAll();
	}

	@Override
	public int deleteBySongListNameAndUserId(String songListName, int userId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public SongList findBySongListNameAndUserId(String songListName, int userId) {
		// TODO Auto-generated method stub
		return mapper.findBySongListNameAndUserId(songListName, userId);
	}

}
