package com.example.echoBuzzing.VO;

/**
 * 		在用户登录以及注册时提供的返回到前端的类
 * 	如果注册或登录成功，则isSuccessful的值为true，userVO中携带着用户信息
 * 	如果用户注册或登录失败，则isSuccessful的值为false，warning中存储着报错信息
 * @author life
 */
public class RegisterAndLoginReturn {
	
	private Boolean isSuccessful;
	private String warning;
	private UserVO userVO;
	
	public RegisterAndLoginReturn(Boolean isSuccessful,String warning,UserVO userVO) {
		this.isSuccessful=isSuccessful;
		this.userVO=userVO;
		this.warning=warning;
	}

	public Boolean getIsSuccessful() {
		return isSuccessful;
	}

	public void setIsSuccessful(Boolean isSuccessful) {
		this.isSuccessful = isSuccessful;
	}

	public String getWarning() {
		return warning;
	}

	public void setWarning(String warning) {
		this.warning = warning;
	}

	public UserVO getUserVO() {
		return userVO;
	}

	public void setUserVO(UserVO userVO) {
		this.userVO = userVO;
	}


	
	
}
