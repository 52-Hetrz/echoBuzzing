package com.example.echoBuzzing.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.echoBuzzing.model.CollectSongList;

@Mapper
@Repository
public interface CollectSongListMapper {
	 List<CollectSongList> findByUserId(int userId);
	 List<CollectSongList> findBySongListId(int songListId);
	 int insertOne(int songListId, int userId);
	 int deleteOne(int collectSongListId);
	 CollectSongList findBySongListIdAndUserId(int SongListId, int userId);
}
