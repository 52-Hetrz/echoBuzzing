package com.example.echoBuzzing.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.echoBuzzing.VO.SongListPageVO;
import com.example.echoBuzzing.model.Song;
import com.example.echoBuzzing.model.SongList;
import com.example.echoBuzzing.model.SongListComment;
import com.example.echoBuzzing.model.SongListSong;
import com.example.echoBuzzing.service.songService;
import com.example.echoBuzzing.service.impl.CollectSongListServiceImpl;
import com.example.echoBuzzing.service.impl.SongListCommentServiceImpl;
import com.example.echoBuzzing.service.impl.SongListServiceImpl;
import com.example.echoBuzzing.service.impl.SongListSongServiceImpl;
import com.example.echoBuzzing.service.impl.SongServiceImpl;
import com.example.echoBuzzing.utils.DateUtil;
import com.example.echoBuzzing.utils.ToImageUtil;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;

@Controller
@RequestMapping("/user")
public class SongListController {
	@Autowired
	private SongListServiceImpl songListService;
	
	@Autowired
	private SongListSongServiceImpl songListSongService;
	
	@Autowired
	private SongListCommentServiceImpl songListCommentService;
	
	@Autowired
	private CollectSongListServiceImpl collectSongListService;
	
	@Autowired
	private SongServiceImpl songService;
	
	
	//歌单页所有数据
	@ResponseBody
	@RequestMapping(value="/songListPage",method=RequestMethod.POST)
	public SongListPageVO toSongListPage(@RequestParam("songListId") Integer songListId) {
		System.out.println("songlistid:"+songListId);
		SongListPageVO songListPageVO=new SongListPageVO();
		SongList songList=songListService.findBySongListId(songListId);
        
		List<SongListSong> songListSongs=songListSongService.findBySongListId(songListId);
		List<Song> songs=new ArrayList<Song>();
		System.out.println("test1:"+songListSongs.size());
		for(SongListSong songListSong:songListSongs){
			System.out.println("test:"+songListSong.getSongId());
			songs.add(songService.getSongbyId(songListSong.getSongId()));
		}


		BeanUtils.copyProperties(songList,songListPageVO);
		songListPageVO.setSongs(songs);
		songListPageVO.setCreateTime(DateUtil.dateToString(songList.getCreateTime()));
		songListPageVO.setUpdateTime(DateUtil.dateToString(songList.getUpdateTime()));
		List<SongListComment> comments=songListCommentService.findBySongListId(songListId);
		songListPageVO.setSongListComments(comments);

		return songListPageVO;
	}
	
	
	//创建歌单
	@ResponseBody
	@RequestMapping(value="/createSongList",method=RequestMethod.POST)
	public String createSongList(@RequestParam("songListName") String songListName,@RequestParam("userId") Integer userId,@RequestParam("createTime") Date createTime,@RequestParam("label") String label,@RequestParam("songListImg") String songListImg) {
		System.out.println("songListName:"+songListName+" userId:"+userId+" createTime:"+createTime+" label:"+label+" songListImg:"+songListImg.length());
		String imageFilePath=ToImageUtil.filePath(ToImageUtil.base64ToByte(songListImg));
		System.out.println("image:"+imageFilePath);
		int resultInsert=songListService.insertOne(songListName, userId, createTime, label, imageFilePath);
		System.out.println(resultInsert);
		if(resultInsert==1) {return "success";}
		else {
			return "fail";
		}
	}
	
	
	
	//删除歌单
	@ResponseBody
	@RequestMapping(value="/deleteSongList",method=RequestMethod.GET)
	public Integer deleteSongList(@RequestParam("songListId") Integer songListId) {
		int deleteResult=songListService.deleteOne(songListId);
		System.out.println(deleteResult);
		return songListId;	
	}
	
	
	
	
	
}