package com.example.echoBuzzing.service;

import java.sql.Date;
import java.util.List;

import com.example.echoBuzzing.model.SongList;

public interface SongListService {
    List<SongList> findByUserId(int userId);
    SongList findBySongListId(int songListId);
    int insertOne(String songListName, int userId, Date createTime, String label, String songListImg);
    int deleteOne(int songListId);
    List<SongList> searchBySongListName(String content);
    List<SongList> findAll();
    int deleteBySongListNameAndUserId(String songListName, int userId);
    SongList findBySongListNameAndUserId(String songListName, int userId);
}
