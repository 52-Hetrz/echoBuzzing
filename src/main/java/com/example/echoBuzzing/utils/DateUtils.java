package com.example.echoBuzzing.utils;

import java.text.SimpleDateFormat;
import java.util.Date;


public class DateUtils {
	
	/**
	 * @Title：getCurrentDate
	 * @Description: 获得当前的时间
	 * @Param: @return
	 * @Return: Date     
	 */
	public static Date getCurrentDate() {
		//格式化时间
		SimpleDateFormat sdf = new SimpleDateFormat();
		//a为am/pm的标记
        sdf.applyPattern("yyyy-MM-dd HH:mm:ss");
        //获取当前时间
        Date date = new Date();
		return date;
	}
}
