package com.example.echoBuzzing.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.echoBuzzing.model.CollectSongList;
import com.example.echoBuzzing.model.SongList;
import com.example.echoBuzzing.service.impl.CollectSongListServiceImpl;
import com.example.echoBuzzing.service.impl.SongListServiceImpl;

@Controller
@RequestMapping("/user")
public class CollectSongListController {
	
	@Autowired
	private CollectSongListServiceImpl collectSongListService;
	
	@Autowired
	private SongListServiceImpl songListService;
	
	@GetMapping("/collectSongList")
	@ResponseBody
	public List<SongList> collectSongList(@RequestParam("songListId")Integer songListId,@RequestParam("userId")Integer userId) {
		if(collectSongListService.findBySongListIdAndUserId(songListId, userId)==null) {
			int insertResult=collectSongListService.insertOne(songListId, userId);
			System.out.print(insertResult);
		}
		List<CollectSongList> collectSongLists=collectSongListService.findByUserId(userId);
		List<SongList> songLists=new ArrayList<SongList>();
		for(CollectSongList collectSongList:collectSongLists) {
			songLists.add(songListService.findBySongListId(collectSongList.getSongListId()));
		}
				
		return songLists;
	}
	
	//删除收藏的歌单
	@GetMapping("/deleteCollectSongList")
	@ResponseBody
	public List<SongList> deleteCollectSongList(@RequestParam("collectSongListId")Integer collectSongListId,@RequestParam("userId")Integer userId){
		int deleteResult=collectSongListService.deleteOne(collectSongListId);
		System.out.println(deleteResult);
		List<CollectSongList> collectSongLists=collectSongListService.findByUserId(userId);
		List<SongList> songLists=new ArrayList<SongList>();
		for(CollectSongList collectSongList:collectSongLists) {
			songLists.add(songListService.findBySongListId(collectSongList.getSongListId()));
		}
				
		return songLists;
	}
	

}
