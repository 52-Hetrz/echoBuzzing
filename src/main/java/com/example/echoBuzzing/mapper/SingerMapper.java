package com.example.echoBuzzing.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.echoBuzzing.model.Singer;

@Mapper
public interface SingerMapper {
	Singer searchSingerById(Integer id);
}
