package com.example.echoBuzzing.service.impl;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.echoBuzzing.mapper.SongListCommentMapper;
import com.example.echoBuzzing.mapper.SongListMapper;
import com.example.echoBuzzing.model.SongList;
import com.example.echoBuzzing.model.SongListComment;
import com.example.echoBuzzing.service.SongListCommentService;

@Service
public class SongListCommentServiceImpl implements SongListCommentService{

	@Autowired
    private SongListCommentMapper mapper;

	
	@Autowired
    private SongListMapper songListMapper;
	
	@Override
	public List<SongListComment> findBySongListId(int songListId) {
		// TODO Auto-generated method stub
		return mapper.findBySongListId(songListId);
	}

	@Override
	public List<SongListComment> findByUserName(String userName) {
		// TODO Auto-generated method stub
		return mapper.findByUserName(userName);
	}

	@Override
	public int insertOne(Integer songListId,String userName,String comment,Date createTime) {
		// TODO Auto-generated method stub
		SongList songList=songListMapper.findBySongListId(songListId);
		if(songList.getCommentNumber()==0) {
			songList.setCommentNumber(1);
		}
		else {
			songList.setCommentNumber(songList.getCommentNumber()+1);
		}
		
		return mapper.insertOne(songListId,userName,comment,createTime);
	}
}
