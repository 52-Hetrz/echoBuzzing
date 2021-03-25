package com.example.echoBuzzing.service;

import java.util.List;

import com.example.echoBuzzing.model.CollectSongList;

public interface CollectSongListService {
	    List<CollectSongList> findByUserId(int userId);
	    List<CollectSongList> findBySongListId(int songListId);
	    int insertOne(int songListId, int userId);
	    int deleteOne(int collectSongListId);
	    CollectSongList findBySongListIdAndUserId(int songListId, int userId);
}
