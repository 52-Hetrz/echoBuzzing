package com.example.echoBuzzing.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.echoBuzzing.mapper.SingerMapper;
import com.example.echoBuzzing.model.Singer;
import com.example.echoBuzzing.service.SingerService;


@Service
public class SingerServiceImpl implements SingerService{

	@Autowired
	SingerMapper singerMapper;
	
	/**
	 * 	根据id在user数据库中返回歌手的信息
	 */
	@Override
	public Singer searchSingerbyId(Integer id) {
		
		return singerMapper.searchSingerById(id);
	}
	
}
