package com.example.echoBuzzing.mapper;

import org.springframework.stereotype.Repository;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.example.echoBuzzing.model.Song;

/**
 * @author 
 * @Description:对数据库song中的歌曲实现增删改查功能
 *
 */

@Repository
@Mapper
public interface SongMapper {
	
		/**
		 * @Title：getSongbyId
		 * @Description: 根据歌曲id从数据库song中获得相应歌曲信息
		 * @Param: @param id
		 * @Return: Song     
		 */
		public Song getSongbyId(Integer id);
 
	
		/**
		 * @Title：addSong
		 * @Description: 在数据库中添加歌曲
		 * @Param: song
		 * @Return: int     
		 */
		public int addSong(Song song); 
		
		

		/**
		 * @Title：update
		 * @Description: 更新数据库总指定歌曲
		 * @Param: @param song
		 * @Return: int     
		 */
		public int update(Song song);
		


		/**
		 * @Title：delete
		 * @Description: 根据id删除数据库中指定歌曲
		 * @Param: @param id
		 * @Return: int     
		 */
		public int delete(Integer id);
		
		
		/**
		 * @Title：getSongbySongName
		 * @Description: 通过歌曲的名字来获得歌曲的所有信息
		 * @Param: @param songName
		 * @Param: @return
		 * @Return: Song     
		 */
		public Song getSongbySongName(String songName);

}
