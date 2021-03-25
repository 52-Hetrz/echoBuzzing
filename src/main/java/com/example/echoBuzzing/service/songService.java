package com.example.echoBuzzing.service;
import java.lang.Integer;

import org.springframework.stereotype.Service;

import com.example.echoBuzzing.model.Song;

public interface songService {
	
	public Song getSongbyId(Integer id);
	
	public int addSong(Song song);
	
	public int update(Song song);
	
	public int delete(Integer id);
	
	public Song getSongbySongName(String songName);

}
