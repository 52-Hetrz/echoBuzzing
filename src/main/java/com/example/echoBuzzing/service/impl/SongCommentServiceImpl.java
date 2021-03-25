package com.example.echoBuzzing.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.echoBuzzing.mapper.SongCommentMapper;
import com.example.echoBuzzing.model.SongComment;
import com.example.echoBuzzing.service.SongCommentService;

@Service
public class SongCommentServiceImpl implements SongCommentService{
	
	@Autowired
	private SongCommentMapper songCommentMapper;
	
	/**
	 * @Title：getSongCommentbyID
	 * @Description: 根据id以字符串形式返回相应的歌曲评论
	 * @Param: @param id
	 * @Param: @return
	 * @Return: String     
	 */
	public SongComment getSongCommentbyID(Integer id) {
		return songCommentMapper.getSongCommentbyID(id);
	}
	
	
	/**
	 * @Title：addSongComment
	 * @Description: 在数据库songcomment中添加新的歌曲评论
	 * @Param: @param songComment
	 * @Param: @return
	 * @Return: int     
	 */
	public int addSongComment(SongComment songComment) {
		return songCommentMapper.addSongComment(songComment);
	}
	
	
	/**
	 * @Title：updateSongComment
	 * @Description: 在数据库中更新特定id的评论
	 * @Param: @param id
	 * @Param: @param songComment
	 * @Param: @return
	 * @Return: int     
	 */
	public int updateSongComment(SongComment songComment) {
		return songCommentMapper.updateSongComment(songComment);
	}
	
	
	/**
	 * @Title：deleteSongComment
	 * @Description: 在数据库中删除指定id的歌曲评论
	 * @Param: @param id
	 * @Param: @return
	 * @Return: int     
	 */
	public int deleteSongComment(Integer id) {
		return songCommentMapper.deleteSongComment(id);
	}
	
	
	/**
	 * @Title：getSongCommentIDbyCreateTime
	 * @Description: 根据songComment的创建时间获得songComment在数据库中的id
	 * @Param: @param songComment
	 * @Param: @return
	 * @Return: int     
	 */
	/*
	public Integer getSongCommentIDbyCreateTime(SongComment songComment) {
		return songCommentMapper.getSongCommentIDbyCreateTime(songComment);
	}
    */
}
