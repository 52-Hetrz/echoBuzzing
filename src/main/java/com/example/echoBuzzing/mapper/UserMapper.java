package com.example.echoBuzzing.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.echoBuzzing.model.User;



@Mapper
public interface UserMapper {
	
	/**
	 * 	向数据库中注册用户信息
	 * @param name 用户名
	 * @param password 用户密码
	 * @param email 用户邮箱
	 */
	//void register(String name,String password,String email,String date);
	void register(User user);
	
	/**
	 * 	查询用户的密码
	 * @param name	用户名
	 * @return String类型的用户密码
	 */
	String getPassword(String name);
	
	/**
	 * 	根据用户名，查询用户信息
	 * @param name	用户名
	 * @return	返回用户信息的User对象
	 */
	User searchUser(String name);
	
	/**
	 * 	更新用户的密码
	 * @param name	用户名
	 * @param password	用户更改的新密码
	 */
	void changePassword(String name,String password);

}
