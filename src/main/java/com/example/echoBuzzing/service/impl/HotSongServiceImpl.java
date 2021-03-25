package com.example.echoBuzzing.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.echoBuzzing.mapper.HotSongMapper;
import com.example.echoBuzzing.mapper.SongMapper;
import com.example.echoBuzzing.model.HotSong;
import com.example.echoBuzzing.model.Song;
import com.example.echoBuzzing.service.HotSongService;
import com.example.echoBuzzing.utils.CommentIDTranslateIntegerListUtils;

@Service
public class HotSongServiceImpl implements HotSongService{
	
	@Autowired
	private HotSongMapper hotSongMapper;
	@Autowired
	private SongMapper songMapper;
	
	@Override
	public HotSong getHotSongsbyuserID(Integer userID) {
		return hotSongMapper.getHotSongsbyuserID(userID);
	}
	
	@Override
	public int updateHotSongs(HotSong hotSong) {
		return hotSongMapper.updateHotSongs(hotSong);
	}
	
	@Override
	public int addHotSongs(HotSong hotSong) {
		return hotSongMapper.addHotSongs(hotSong);
	}
	
	@Override
	public int deleteHotSongs(Integer userID) {
		return hotSongMapper.deleteHotSongs(userID);
	}
	
	@Override
	public List<Song> getHotSongListbyUserName(Integer userID){
		//存储需要输出的热歌歌单
		List<Song> hotSongsList=new ArrayList<Song>();
		System.out.println(userID);
		//通过歌手id获得该歌手热歌歌单信息
		HotSong hotSong=hotSongMapper.getHotSongsbyuserID(userID);
		System.out.println(hotSong.toString());
		//获得热歌歌单中存储的歌曲对应的在数据库song中的id（字符串形式）
		String hotSongIDList=hotSong.getHotSongIdString();
		//当歌手的热歌歌单不为空时
		if(hotSongIDList.length()>0) {
			List<Integer> hotSongIdListInteger=CommentIDTranslateIntegerListUtils.
					CommentIDTranslateIntegerListUtils(hotSongIDList);
			for(int i=0;i<hotSongIdListInteger.size();i++) {
				hotSongsList.add(songMapper.getSongbyId(hotSongIdListInteger.get(i)));
			}
			return hotSongsList;
		}
		//当歌手热歌歌单为空时	
		else {
				return hotSongsList;
		}
	}

}
