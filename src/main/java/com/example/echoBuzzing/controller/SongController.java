package com.example.echoBuzzing.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.echoBuzzing.VO.SongMessageVO;
import com.example.echoBuzzing.mapper.HotSongMapper;
import com.example.echoBuzzing.model.HotSong;
import com.example.echoBuzzing.model.Song;
import com.example.echoBuzzing.model.SongComment;
import com.example.echoBuzzing.model.SongCommentMessage;
import com.example.echoBuzzing.service.HotSongService;
import com.example.echoBuzzing.service.SongCommentService;
import com.example.echoBuzzing.service.songService;
import com.example.echoBuzzing.service.impl.SongCommentServiceImpl;
import com.example.echoBuzzing.service.impl.SongServiceImpl;
import com.example.echoBuzzing.utils.CommentIDTranslateIntegerListUtils;
import com.example.echoBuzzing.utils.DateUtils;

@RestController
public class SongController {
	
	@Autowired
	private songService songService;	
	@Autowired
	private SongCommentService songCommentService;
	@Autowired
	private HotSongService hotSongService;
	
	/**
	 * @Title：toSongPlayerPage
	 * @Description: 前端传送给后端歌曲id值，后端根据id值在数据库中寻找歌曲，并将
	 * 歌曲信息传回前端。其中，如果用户没有对该歌曲有评论的话，后端会传回一个定义好的SongComment
	 * @Param: @param id
	 * @Param: @return
	 * @Return: SongMessageVO     
	 */
	@RequestMapping(value="/toSongPlayerPage",method=RequestMethod.GET)
	@ResponseBody
	public SongMessageVO toSongPlayerPage(@RequestParam Integer id) { 

		//用于存储传回前端的信息
		SongMessageVO songMessageVO =new SongMessageVO();
		
		//以数组方式存储歌曲评论信息
		List<SongComment> songCommentContentListSongComment=new ArrayList<SongComment>();
		
		//根据前端传过来的id查出对应的song的信息
		Song song=songService.getSongbyId(id);
		
		//获得歌曲实例中存储有歌曲评论id的字符串songCommentId
		String songCommentIdString=song.getSongComment();
		//System.out.println(songCommentIdString);
		
		//判断是否已有用户对该歌曲进行了评价
		if(songCommentIdString!=null&&songCommentIdString.length()!=0) {
		/*调用CommentIDTranslateIntegerListUtils的静态方法将字符串中存储的
		评论id以List<Integer>数组形式存储起来*/
		List<Integer> commentIdListInteger=CommentIDTranslateIntegerListUtils.
				CommentIDTranslateIntegerListUtils(songCommentIdString);
		
		//遍历存储有评论id的数组，将每个id对应的评论从数据库songcomment中提取
		//出来,并存入List<String>数组中，并将该数组存入传回前端的songMessageVO
		//对象中
		for(int i=0;i<commentIdListInteger.size();i++) {
			songCommentContentListSongComment.add(songCommentService.
					getSongCommentbyID(commentIdListInteger.get(i)));
		}
	}
		else {
			songCommentContentListSongComment.add(new SongComment("无评论"));
		}
		//将歌曲的信息与歌曲的评论信息加到songMessage传到前端
		songMessageVO.setSong(song);
		songMessageVO.setComments(songCommentContentListSongComment);
		return songMessageVO;
	}
	
	/**
	 * @Title：updateSongComment
	 * @Description: 将用户对歌曲的评论添加到歌曲评论的数据库songcomment中去，
	 * 并更新歌曲中记录用户评论的songComment。前端需要把用户评论的内容，用户评论
	 * 的歌曲的id，用户的id封装在songCommentMessage中传给后端。
	 * @Param: @return
	 * @Return: SongComment     
	 */
	@RequestMapping(value = "/updateSongComment",method = RequestMethod.POST)
	@ResponseBody
	public SongComment updateSongComment(@RequestBody SongCommentMessage songCommentMessage) {
		//将前端传递的歌曲评论信息赋给用于更新数据库的实例songComent
		SongComment songComment=new SongComment(songCommentMessage.getSongCommentContentString()
				,songCommentMessage.getUserID(),songCommentMessage.getUserName());
		songComment.setCreateTime(DateUtils.getCurrentDate());
		
		//更新数据库，并将新增评论的主键信息赋给songComment中的id
		songCommentService.addSongComment(songComment);
		
		//检测新加入数据库中的songComment的属性内容
		System.out.println(songComment.toString()+"  "+songCommentMessage.getSongID());
		//用songCommentMessage中的歌曲评论对应的歌曲在数据库中的id返回这首歌的所有信息
		Song song=songService.getSongbyId(songCommentMessage.getSongID());
		//返回歌曲评论对应的歌曲的相应信息
		System.out.println(song.toString());
		
		if(song.getSongComment()!=null&&song.getSongComment().length()>0) {
			String originalSongComment=song.getSongComment();
			String increaseSongCommnet=","+songComment.getId();
			System.out.println(increaseSongCommnet);
			String currentSongComment=originalSongComment.concat(increaseSongCommnet);
			System.out.println(currentSongComment);
			//更新song中记录评论信息id的songComment，并更新数据库song中该首歌的信息
			song.setSongComment(currentSongComment);
		}
		else {
			song.setSongComment(""+songComment.getId());
		}
		
		//检测新增的歌曲评价相关的信息
		System.out.println(songComment.toString());
		System.out.println(song.getSongComment());
		songService.update(song);
		System.out.println(songComment.toString());
		return songComment;
	}
	
	/**
	 * @Title：getSongBySongName
	 * @Description: 前端向后端传送歌曲的名字，如果在数据库中有这首歌，则后端将这首歌的
	 * 信息传给前端，其中，如果用户对这首歌还没有评论的话，后端传回前端的SongComment类的
	 * 属性中id、userID均为Integer.MIN_VALUE；如果数据库中没有这首歌曲，则后端向前端传送
	 * 没有歌曲的信息
	 * @Param: @return
	 * @Return: SongMessageVO     
	 */
	@RequestMapping(value="/getSongBySongName",method=RequestMethod.GET)
	@ResponseBody
	public SongMessageVO getSongBySongName(@RequestParam String songName) { 
		
		SongMessageVO songMessageVO=new SongMessageVO();
		//用歌曲的名字查找出歌曲的信息
		Song song=songService.getSongbySongName(songName);
		
		//以数组方式存储歌曲评论信息
		List<SongComment> songCommentContentListSongComment=new ArrayList<SongComment>();
		
		//在数据库中可以找到与歌名对应的歌曲
		if(song!=null) {
			
		//获得歌曲实例中存储有歌曲评论id的字符串songCommentId
		String songCommentIdString=song.getSongComment();
		
		if(songCommentIdString.length()!=0) {	
		/*调用CommentIDTranslateIntegerListUtils的静态方法将字符串中存储的
		评论id以List<Integer>数组形式存储起来*/
		List<Integer> commentIdListInteger=CommentIDTranslateIntegerListUtils.
				CommentIDTranslateIntegerListUtils(songCommentIdString);
				
		//遍历存储有评论id的数组，将每个id对应的评论从数据库songcomment中提取
		//出来,并存入List<String>数组中，并将该数组存入传回前端的songMessageVO
		//对象中
		for(int i=0;i<commentIdListInteger.size();i++) {
			songCommentContentListSongComment.add(songCommentService.
					getSongCommentbyID(commentIdListInteger.get(i)));
		}
	}
		else {
			SongComment withoutSongComment=new SongComment("无评论");
			songCommentContentListSongComment.add(withoutSongComment);
	}
 }
		//在数据库中查找不到与歌名对应的歌曲
		else {
			song=new Song("找不到该歌曲");
			SongComment withoutSongComment=new SongComment("无评论");
			songCommentContentListSongComment.add(withoutSongComment);
		}
		//将歌曲的信息与歌曲的评论信息加到songMessage传到前端
		songMessageVO.setSong(song);
		songMessageVO.setComments(songCommentContentListSongComment);
		return songMessageVO;
	}
	
	@RequestMapping(value = "/getUser")
    public String GetUser(){
        return "success";
    }
	
	/**
	 * @Title：getHotSongsList
	 * @Description: 测试给定参数歌手ID，输出歌手热歌歌单的功能能否使用
	 * @Param: @return
	 * @Return: List<Song>     
	 */
	@RequestMapping(value="/getHotSongsList",method=RequestMethod.GET)
	@ResponseBody
	public List<Song> getHotSongsList(){
	
		return hotSongService.getHotSongListbyUserName(1);
	}
}
