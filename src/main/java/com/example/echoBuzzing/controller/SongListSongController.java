package com.example.echoBuzzing.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.echoBuzzing.model.SongList;
import com.example.echoBuzzing.model.SongListSong;
import com.example.echoBuzzing.service.impl.SongListServiceImpl;
import com.example.echoBuzzing.service.impl.SongListSongServiceImpl;

@Controller
@RequestMapping("/user")
public class SongListSongController {
	@Autowired
	private SongListServiceImpl songListService;
	
	@Autowired
	private SongListSongServiceImpl songListSongService;
	
	//收藏音乐
	@GetMapping("/collectSong")
	@ResponseBody
	public List<SongList> collectSong(@RequestParam("songListId")Integer songListId,@RequestParam("songId")Integer songId,@RequestParam("userId")Integer userId) {
		
		int insertResult=songListSongService.insertOne(songListId, songId);
		System.out.println("insertResult"+insertResult);
		List<SongList> songListsA=songListService.findByUserId(userId);
		List<SongList> songListsB=new ArrayList<SongList>();
		for(SongList songList:songListsA) {
			if(songListSongService.findBySongListIdAndSongId((songList.getSongListId()), songId)==null) {
				songListsB.add(songList);
			}
		}
		
		return songListsB;
		
	}
	
	//删除音乐
	@GetMapping("/deleteSong")
	@ResponseBody
	public String deleteSong(@RequestParam("songListId")Integer songListId,@RequestParam("songId")Integer songId) {
		int deleteResult=songListSongService.deleteBySongListIdAndSongId(songListId,songId);
		System.out.println("deleteResult"+deleteResult);
		return "success";
	}
	
}

