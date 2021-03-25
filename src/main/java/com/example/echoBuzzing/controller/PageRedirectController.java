package com.example.echoBuzzing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageRedirectController {
	@RequestMapping("/index")
	public String showIndex() {
		return "index";
	}
	
	@RequestMapping("/classify")
	public String showClassify() {
		return "classify";
	}
	
	@RequestMapping("/singer")
	public String showSinger() {
		return "singer";
	}
	
	@RequestMapping("/userPage")
	public String showUserPage() {
		return "userPage";
	}
	
	@RequestMapping("/songlist")
	public String showSongList() {
		return "singleSongList";
	}
	
	@RequestMapping("/singerpage")
	public String showSingerPage() {
		return "singleSinger";
	}
	
	@RequestMapping("/songpage")
	public String showSongPage() {
		return "singleSong";
	}
}
