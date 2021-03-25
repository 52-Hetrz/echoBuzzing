package com.example.echoBuzzing.service;

import java.sql.Date;
import java.util.List;

import com.example.echoBuzzing.model.SongListComment;

public interface SongListCommentService {
    List<SongListComment> findBySongListId(int songListId);
    List<SongListComment> findByUserName(String userName);
    int insertOne(Integer songListId, String userName, String comment, Date createTime);
}
