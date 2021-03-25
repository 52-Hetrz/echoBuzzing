package com.example.echoBuzzing.utils;

import java.text.DateFormat;

import java.text.SimpleDateFormat;

import java.util.Date;



public class DateUtil {



    public static String dateToString(Date date){

        if (date == null){

            date = new Date();

        }

        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");

        return format.format(date);

    }

}
