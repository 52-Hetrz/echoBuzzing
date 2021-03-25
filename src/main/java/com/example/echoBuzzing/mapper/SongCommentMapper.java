package com.example.echoBuzzing.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.example.echoBuzzing.model.SongComment;

/**
 * @author asus
 * @Description:对数据库songcomment中的歌曲评论实现增删改查功能
 *
 */
@Mapper
@Repository
public interface SongCommentMapper {
	
	/**
	 * @Title：getSongCommentbyID
	 * @Description: 根据id以字符串形式返回相应的歌曲评论
	 * @Param: @param id
	 * @Param: @return
	 * @Return: String     
	 */
	public SongComment getSongCommentbyID(Integer id);
	
	
	/**
	 * @Title：addSongComment
	 * @Description: 在数据库songcomment中添加新的歌曲评论
	 * @Param: @param songComment
	 * @Param: @return
	 * @Return: int     
	 */
	public int addSongComment(SongComment songComment);
	
	
	/**
	 * @Title：updateSongComment
	 * @Description: 在数据库中更新特定id的评论
	 * @Param: @param id
	 * @Param: @param songComment
	 * @Param: @return
	 * @Return: int     
	 */
	public int updateSongComment(SongComment songComment);
	
	
	/**
	 * @Title：deleteSongComment
	 * @Description: 在数据库中删除指定id的歌曲评论
	 * @Param: @param id
	 * @Param: @return
	 * @Return: int     
	 */
	public int deleteSongComment(Integer id);
	
	/**
	 * @Title：getSongCommentIDbyCreateTime
	 * @Description: 根据songComment的创建时间获得songComment在数据库中的id
	 * @Param: @param songComment
	 * @Param: @return
	 * @Return: int     
	 */
	//public Integer getSongCommentIDbyCreateTime(SongComment songComment);

}
