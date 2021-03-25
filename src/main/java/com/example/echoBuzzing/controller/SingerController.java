package com.example.echoBuzzing.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.echoBuzzing.VO.SingerVO;
import com.example.echoBuzzing.model.HotSong;
import com.example.echoBuzzing.model.Singer;
import com.example.echoBuzzing.model.Song;
import com.example.echoBuzzing.model.SongList;
import com.example.echoBuzzing.model.SongListSong;
import com.example.echoBuzzing.service.SongListSongService;
import com.example.echoBuzzing.service.songService;
import com.example.echoBuzzing.service.impl.HotSongServiceImpl;
import com.example.echoBuzzing.service.impl.SingerServiceImpl;
import com.example.echoBuzzing.service.impl.SongListServiceImpl;
import com.example.echoBuzzing.service.impl.SongListSongServiceImpl;
import com.example.echoBuzzing.service.impl.SongServiceImpl;
import com.example.echoBuzzing.utils.CommentIDTranslateIntegerListUtils;

@Controller
public class SingerController {

	@Autowired
	SingerServiceImpl singerService;
	@Autowired
	SongListServiceImpl songListService;
	@Autowired
	HotSongServiceImpl hotSongService;
	@Autowired
	SongServiceImpl songService;
	@Autowired
	SongListSongServiceImpl songListSongService;
	
	/**
	 * 		搜索歌手
	 * 	接受前端传递的歌手的id，到数据库中搜索相关信息，然后返回给前端
	 * @param id	歌手的id
	 * @return	SingerVO对象，内含歌手的信息
	 */
	@ResponseBody
	@RequestMapping(value="/searchSinger1",method=RequestMethod.GET)
	public SingerVO searchSingerById(@RequestParam("id")Integer id) {
		Singer singer=singerService.searchSingerbyId(id);
		return new SingerVO(singer,songListService.findByUserId(id),getHotSongsList(id),initilizeNewSongs(songListService.findByUserId(id)));
	}
	
	/**
	 * 		搜索歌手测试
	 * 	获取前端传来的歌手id，到数据库中搜索并返回歌手信息
	 * 	输出到控制台上，看信息是否正确
	 * @param id	歌手id
	 * @return	返回index界面
	 */
	@RequestMapping("/searchSinger")
	public String searchSingerTest(@RequestParam("id")Integer id) {
		Singer singer=singerService.searchSingerbyId(id);
		System.out.println(singer.toString());
		System.out.println(new SingerVO(singer,songListService.findByUserId(id),getHotSongsList(id),initilizeNewSongs(songListService.findByUserId(id))).toString());
		return "index";
	}
	
	
	/**
	 * 	根据歌手的id，在数据库中搜索歌手的热歌
	 * @param userID	歌手的id
	 * @return	List<Song>返回一个存储着歌曲信息列表
	 */
	public List<Song> getHotSongsList(Integer userID){
		List<Song> hotSongsList=new ArrayList<Song>();
		System.out.println(userID);
		HotSong hotSong=hotSongService.getHotSongsbyuserID(userID);
		System.out.println(hotSong.toString());
		String hotSongIDList=hotSong.getHotSongIdString();
		if(hotSongIDList.length()>0) {
			List<Integer> hotSongIdListInteger=CommentIDTranslateIntegerListUtils.
					CommentIDTranslateIntegerListUtils(hotSongIDList);
			for(int i=0;i<hotSongIdListInteger.size();i++) {
				hotSongsList.add(songService.getSongbyId(hotSongIdListInteger.get(i)));
			}
			return hotSongsList;
		}
		else {
				return hotSongsList;
		}
	}
	
	
	/**
	 * 		初始化歌手新歌 
	 * 	给定一个专辑的列表，初始化新歌
	 * @param albums	专辑列表
	 * @return	返回List<Song>包含新歌的List
	 */
	public List<Song> initilizeNewSongs(List<SongList> albums){
		ArrayList<Song> newSongs=new ArrayList<Song>();
		for(SongList s:albums) {
			List<SongListSong> ss=songListSongService.findBySongListId(s.getSongListId());
			if(ss.size()>0) {
				newSongs.add(songService.getSongbyId(ss.get(0).getSongId()));
			}
		}
		return newSongs;
	}
}
