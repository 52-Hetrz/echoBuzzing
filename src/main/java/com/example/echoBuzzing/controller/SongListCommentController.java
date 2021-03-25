package com.example.echoBuzzing.controller;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.echoBuzzing.model.SongListComment;
import com.example.echoBuzzing.service.impl.SongListCommentServiceImpl;

@Controller
@RequestMapping("/user")
public class SongListCommentController {
	@Autowired
	private SongListCommentServiceImpl songListCommentService;
	
	//需要userService
	@GetMapping("/submitComment")
	@ResponseBody
	public List<SongListComment> submitComment(@RequestParam("songListId")Integer songListId,@RequestParam("userName")String userName,@RequestParam("comment")String comment,@RequestParam("createTime")Date createTime) {
		int insertResult=songListCommentService.insertOne(songListId,userName,comment,createTime);
		System.out.print(insertResult);
		List<SongListComment> comments=songListCommentService.findBySongListId(songListId);
		return comments;
	}
	
}
