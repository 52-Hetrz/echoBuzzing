package com.example.echoBuzzing.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.echoBuzzing.mapper.SongMapper;
import com.example.echoBuzzing.model.Song;
import com.example.echoBuzzing.service.songService;

@Service
public class SongServiceImpl implements songService{
	
	@Autowired
	private SongMapper songMapper;
	
	@Override
	public Song getSongbyId(Integer id) {
		return songMapper.getSongbyId(id);
	}

	@Override
	public int addSong(Song song) {
		return songMapper.addSong(song);
	}

	@Override
	public int update(Song song) {
		return songMapper.update(song);
	}

	@Override
	public int delete(Integer id) {
		return songMapper.delete(id);
	}
	
	@Override
	public Song getSongbySongName(String songName) {
		return songMapper.getSongbySongName(songName);
	}

}
