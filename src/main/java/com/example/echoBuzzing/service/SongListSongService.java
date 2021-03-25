package com.example.echoBuzzing.service;

import java.util.List;

import com.example.echoBuzzing.model.SongListSong;

public interface SongListSongService {
	List<SongListSong> findBySongListId(int songListId);
    int insertOne(Integer songListId, Integer songId);
    int deleteBySongListSongId(int songListSongId);
    int deleteBySongListIdAndSongId(int songListId,int songId);
    List<SongListSong> findBySongId(Integer songId);
    SongListSong findBySongListIdAndSongId(int songListId, int songId);

}
