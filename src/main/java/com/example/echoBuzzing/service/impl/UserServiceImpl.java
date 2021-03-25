package com.example.echoBuzzing.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.echoBuzzing.mapper.UserMapper;
import com.example.echoBuzzing.model.User;
import com.example.echoBuzzing.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	UserMapper userMapper;
	
	/**
	 * 	实现UserMapper中的register方法
	 * @param name	用户名
	 * @param password 密码
	 * @param email 用户邮箱
	 */
	@Override
	public void register(User user) {
		userMapper.register(user);
	}
	
	/**
	 * 	实现UserMapper中的getPassword方法
	 * 	查询用户的密码
	 * @param name	要查询的用户名
	 * @return	返回String类型的密码
	 */
	public String getPassword(String name) {
		return userMapper.getPassword(name);
	}
	
	/**
	 * 	实现UserMapper中的searchUser方法
	 * 	根据用户名查询用户
	 * @param name	要查询的用户名
	 * @return	返回用户对象
	 */
	public User searchUser(String name) {
		return userMapper.searchUser(name);
	}
	
	/**
	 * 	实现UserMapper中的changePassword方法
	 * 	将用户的密码设置为新的密码
	 * @param name
	 * @param password
	 */
	public void changePassword(String name,String password) {
		userMapper.changePassword(name, password);
	}
}
