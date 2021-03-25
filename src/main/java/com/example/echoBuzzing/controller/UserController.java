package com.example.echoBuzzing.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.echoBuzzing.VO.RegisterAndLoginReturn;
import com.example.echoBuzzing.VO.UserVO;
import com.example.echoBuzzing.model.CollectSongList;
import com.example.echoBuzzing.model.SongList;
import com.example.echoBuzzing.model.User;
import com.example.echoBuzzing.service.CollectSongListService;
import com.example.echoBuzzing.service.impl.CollectSongListServiceImpl;
import com.example.echoBuzzing.service.impl.SongListServiceImpl;
import com.example.echoBuzzing.service.impl.UserServiceImpl;



/**
 * 		与用户管理相关的controller
 * 	用户注册处理函数register
 * 	用户登录处理函数login
 * 	修改密码处理函数changePassword
 * 	其中带有test的函数为测试函数，在控制台输出信息来判断函数是否按照预期执行
 * @author life
 *
 */
@Controller
//@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserServiceImpl userService;
	@Autowired
	CollectSongListServiceImpl collectSongListService;
	@Autowired
	SongListServiceImpl songListService;

	
	/**
	 * 		用户注册信息反馈测试
	 * 	根据前端传递的消息，判断用户注册的状态
	 * 	并根据不同的注册状态在控制台输出相应的信息，来测试对前端的信息处理是否正确
	 * @param request 请求该函数的端口
	 * @return 返回界面index
	 */
	//@ResponseBody
	@RequestMapping(value="/register")
	public String registerTest(HttpServletRequest request) {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String password2=request.getParameter("password2");
		User user=new User(name, password, email, getNowDate());
		if(userService.searchUser(name)!=null) {
			System.out.println("---		Error	---		User is exit	-----");
		}else {
			
			if(password.equals(password2)) {
				if(password.length()<6) {
					System.out.println("---		Error	---- 		密码少于六个字符，请重新输入			--------");
				
				}else {
					System.out.println("!-----	Success	----------	"+new User(name, password, email,getNowDate()).toString()+"		------------");
					userService.register(user);
					
				}
				
			}else { 
				System.out.println("--------Register failure---		两次密码不一致		------");
				
			}
		}
		return "index";
	}
	
	
	
	/**
	 * 		用户注册
	 * 	接受用户注册的信息
	 * 	根据不同的注册状态，将信息存储在一个RegisterAndLoginReturn对象反馈给前端
	 * @param request
	 * @return	一个RegisterAndLoginReturn对象，其中存储着注册的响应信息
	 */
	@ResponseBody
	@RequestMapping(value="/register1",method=RequestMethod.GET)
	public RegisterAndLoginReturn register(HttpServletRequest request) {
		
		String warning="";
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String password2=request.getParameter("password2");
		User user=new User(name, password, email, getNowDate());
		
		if(userService.searchUser(name)!=null) {
			System.out.println("------User is exit-----");
			warning="用户名已存在";
			return new RegisterAndLoginReturn(false, warning, null);
		}else {
			if(password.equals(password2)) {
				if(password.length()<6) {
					System.out.println("---		Error	---- 		密码少于六个字符，请重新输入			--------");
					warning="输入密码过短，应该大于6个字符";
					return new RegisterAndLoginReturn(false, warning, null);
				}
				System.out.println("---------------"+user.toString()+"------------");
				//userService.register(name, password, email,getNowDate());
				userService.register(user);
				return new RegisterAndLoginReturn(true, warning,makeUserVO(name));
			}else { 
				System.out.println("--------Register failure---------");
				warning="两次密码输入不一致";
				return new RegisterAndLoginReturn(false, warning, null);
			}
		}
		
	}

	
	
	/**
	 * 		用户登录信息反馈测试
	 * 	接受前端的用户登录参数，根据不同的登陆状态在控制台输出提示
	 * 	以此来检测对前端数据的判断是否正确
	 * @param request	请求该函数的form
	 * @return	主界面index
	 */
	@RequestMapping(value="/login")
	public String loginTest(HttpServletRequest request) {
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		
		if(userService.searchUser(name)!=null) {
			String userPassword=userService.getPassword(name);
			if(!password.equals(userPassword)) {
				System.out.println("-------	Error	----------			密码错误		------");
			}else {
				System.out.println("-----登录成功："+userService.searchUser(name).toString());
				System.out.println(makeUserVO(name).toString());
			}
		}else {
			System.out.println("-------	Error	----------			用户名不存在		------");
		}
		return "index";
	}
	
	
	/**
	 * 		用户登录
	 * 	获取前端传递的用户登录信息，判断用户的登陆状态，并将信息存储到一个RegisterAndLoginReturn对象当中，
	 * 	该对象存储着信息处理的信息
	 * @param request	函数的请求来源
	 * @return	一个RegisterAndLoginReturn对象
	 */
	@ResponseBody
	@RequestMapping(value="/login1",method=RequestMethod.GET)
	public RegisterAndLoginReturn login(HttpServletRequest request) {
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String warning="";
		if(userService.searchUser(name)!=null) {
			String userPassword=userService.getPassword(name);
			if(!password.equals(userPassword)) {
				warning="密码错误";
				return new RegisterAndLoginReturn(false, warning, null);
			}else {
				return new RegisterAndLoginReturn(true,warning,makeUserVO(name));
			}
		}else {
			warning="用户名不存在";
			return new RegisterAndLoginReturn(false, warning, null);
		}
		
	}
	
	
	/**
	 * 		用户修改密码的测试函数
	 * 	接受前端传递的消息，根据修改密码的不同情况，在控制台输出不同的信息进行测试
	 * @param request
	 * @return 主界面index
	 */
	@RequestMapping(value="/changePassword")
	public String changePasswordTest(HttpServletRequest request) {
		String name=request.getParameter("name");
		String originalPassword=request.getParameter("originalPassword");
		String newPassword=request.getParameter("newPassword");
		String newPassword2=request.getParameter("newPassword2");
		System.out.println("--------- "+name+"------------");
		if(userService.searchUser(name)!=null) {
			if(originalPassword.equals(userService.getPassword(name))) {
				if(!newPassword.equals(newPassword2)) {
					System.out.println("--------- 			两次密码不一致				 --------------");	
				}else if(newPassword.length()<6) {
					System.out.println("----------- 		新密码长度小于6			 --------------");	
				}else {
					userService.changePassword(name, newPassword);
				}
			}else {
				System.out.println("--------- 			原密码错误				--------------");	
			}
		}else {
			System.out.println("---------- 			用户名错误		  ----------");
		}
		
		return "userPage";
	}
	
	
	/**
	 * 		用户修改密码函数
	 * 	接受前端用户填写的信息，如果修改密码出错，则返回出错提示
	 * 	如果修改密码成功，则会更新数据库，并返回提示信息
	 * @param request	发出请求的界面
	 * @return	提示信息
	 */
	@ResponseBody
	@RequestMapping(value="/changePassword1",method=RequestMethod.GET)
	public String changePassword(HttpServletRequest request) {
		String name=request.getParameter("name");
		String originalPassword=request.getParameter("originalPassword");
		String newPassword=request.getParameter("newPassword");
		String newPassword2=request.getParameter("newPassword2");
		if(userService.searchUser(name)!=null) {
			if(originalPassword.equals(userService.getPassword(name))) {
				if(!newPassword.equals(newPassword2)) {
					//System.out.println("--------- 			两次密码不一致				 --------------");	
					return "两次密码不一致";
				}else if(newPassword.length()<6) {
					//System.out.println("----------- 		新密码长度小于6			 --------------");
					return "新密码少于6个字符";
				}else {
					userService.changePassword(name, newPassword);
					return "密码修改成功";
				}
			}else {
				//System.out.println("--------- 			原密码错误				--------------");
				return "密码错误";
			}
		}else {
			//System.out.println("---------- 			用户名错误		  ----------");
			return "用户名不存在";
		}
	}

	
	/**
	 * 	获取用户注册的时间
	 * @return	返回字符串类型的时间
	 */
	public String getNowDate() {
		DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date=new Date();
		return format.format(date);
	}
	
	/**
	 * 	根据用户名，创建一个包含用户所有信息的对象，用于返回前端界面显示
	 * @param name	要创建对象的用户名
	 * @return	返回该用户的UserVO对象
	 */
	public UserVO makeUserVO(String name) {
		User user=userService.searchUser(name);
		int id=user.getId();
		ArrayList<SongList> collectSongLists=new ArrayList<SongList>();
		for(CollectSongList c:collectSongListService.findByUserId(id)) {
			Integer collectSongListId=c.getCollectSongListId();
			SongList s=songListService.findBySongListId(c.getSongListId());
			s.setCollectSongListId(collectSongListId);
			collectSongLists.add(s);
		}
		
		return new UserVO(user, collectSongLists, songListService.findByUserId(id));
	}
	
	
}

