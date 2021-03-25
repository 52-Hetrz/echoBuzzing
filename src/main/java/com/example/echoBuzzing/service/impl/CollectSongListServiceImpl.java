package com.example.echoBuzzing.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.echoBuzzing.mapper.CollectSongListMapper;
import com.example.echoBuzzing.mapper.SongListMapper;
import com.example.echoBuzzing.model.CollectSongList;
import com.example.echoBuzzing.model.SongList;
import com.example.echoBuzzing.service.CollectSongListService;

@Service
public class CollectSongListServiceImpl implements CollectSongListService{
	
    @Autowired
    private CollectSongListMapper mapper;



    @Autowired
    private SongListMapper songListMapper;

	@Override
	public List<CollectSongList> findByUserId(int userId) {
		// TODO Auto-generated method stub
		return mapper.findByUserId(userId);
	}

	@Override
	public List<CollectSongList> findBySongListId(int songListId) {
		// TODO Auto-generated method stub
		return mapper.findBySongListId(songListId);
	}

	@Override
	public int insertOne(int songListId,int userId) {
		// TODO Auto-generated method stub
		SongList songList=songListMapper.findBySongListId(songListId);

		return mapper.insertOne(songListId,userId);
	}

	@Override
	public int deleteOne(int collectSongListId) {
		// TODO Auto-generated method stub
		return mapper.deleteOne(collectSongListId);
	}

	@Override
	public CollectSongList findBySongListIdAndUserId(int songListId, int userId) {
		// TODO Auto-generated method stub
		return mapper.findBySongListIdAndUserId(songListId, userId);
	}

}
