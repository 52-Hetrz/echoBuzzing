package com.example.echoBuzzing.utils;

import java.util.ArrayList;
import java.util.List;

/**
 * @author asus
 * @Description:工具类，用于将以String形式存放在Song中的歌曲评论id转换为Integer数组
 *
 */
public class CommentIDTranslateIntegerListUtils {
	
	
	/**
	 * @Title：CommentIDTranslateIntegerListUtils
	 * @Description: 从存有歌曲评论id的String形式的songCommentId中提取id，并以int形式
	 * 存放在commentIDList中，并反回commentIDList
	 * @Param: @param songCommentId
	 * @Param: @return
	 * @Return: List<Integer>     
	 */
	public static List<Integer> CommentIDTranslateIntegerListUtils(String songCommentId){
		List<Integer> commentIDList=new ArrayList<Integer>();
		int i,j;
		for(i=0,j=0;j<songCommentId.length();j++) {
			if(songCommentId.charAt(j)==',') {
				String thisID=songCommentId.substring(i, j);
				Integer id=Integer.parseInt(thisID);
				commentIDList.add(id);
				i=j+1;
			}
		}
		String thisID=songCommentId.substring(i, j);
		Integer id=Integer.parseInt(thisID);
		commentIDList.add(id);
		return commentIDList;
	}

}
