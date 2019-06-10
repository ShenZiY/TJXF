package cn.nankai.tjxf1.service;

import cn.nankai.tjxf1.entity.User;

//Service层接口
public interface UserService {
	
	//检验用户登录
	User checkLogin(String username,String password);
  //检验注册用户名是否已存在
	boolean registerNameOnly(String username);

	boolean addUser(User user);

}
