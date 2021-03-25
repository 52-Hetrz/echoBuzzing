package com.example.echoBuzzing.mapper;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.echoBuzzing.model.SongList;

@Mapper
@Repository
public interface SongListMapper {
	List<SongList> findByUserId(int userId);
	SongList findBySongListId(int songListId);
	int insertSongList(String songListName, int userId, Date createTime, String label, String songListImg,int commentNumber);
	int deleteBySongListId(int songListId);
	List<SongList> searchBySongListName(String content);
	List<SongList> findAll();
	int deleteBySongListNameAndUserId(String songListName, int userId);
    SongList findBySongListNameAndUserId(String songListName, int userId);


}
