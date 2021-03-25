package com.example.echoBuzzing.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.echoBuzzing.model.SongListSong;

@Mapper
@Repository
public interface SongListSongMapper {
	int insertOne(Integer songListId, Integer songId);
	SongListSong findById(int songListSongId);
    List<SongListSong> findBySongListId(int songListId);
    List<SongListSong> findBySongId(int songId);
    int deleteBySongListSongId(int songListSongId);
    int deleteBySongListIdAndSongId(int songListId,int songId);
    SongListSong findBySongListIdAndSongId(int songListId, int songId);
}
