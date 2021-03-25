package com.example.echoBuzzing.service;

import org.springframework.stereotype.Service;

import com.example.echoBuzzing.model.Singer;

public interface SingerService {
	public Singer searchSingerbyId(Integer id);
}
