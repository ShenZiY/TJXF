package cn.nankai.tjxf1.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.nankai.tjxf1.entity.User;

@Repository
public interface UserDao {
	
	
	/**
	 * 查找用户名和密码
	 * @param username 登录用户名 
	 * @param password 密码
	 * @return
	 */
	User findByUsername(String username);
    /**
     * 查询该用户是否已经注册
     * @param username
     * @return
     */
	
	public List<User> loginFindNamePwd(String username);
	
	/**
	 * 注册用户和密码
	 * @param username 用户名
	 * @param password 密码
	 * @return
	 */
	int register(User user);
	
	/***
	 *批量插入用户信息
	 */
	 void insertintoUserwithbath(List<User> userList);
}
