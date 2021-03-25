package com.example.echoBuzzing.mapper;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.echoBuzzing.model.SongListComment;

@Mapper
@Repository
public interface SongListCommentMapper {
	 List<SongListComment> findBySongListId(int songListId);
	 List<SongListComment> findByUserName(String userName);
	 int insertOne(Integer songListId, String userName, String comment, Date createTime);
}
