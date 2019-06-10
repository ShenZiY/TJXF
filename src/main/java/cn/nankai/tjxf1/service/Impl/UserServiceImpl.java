package cn.nankai.tjxf1.service.Impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.nankai.tjxf1.dao.UserDao;
import cn.nankai.tjxf1.entity.User;
import cn.nankai.tjxf1.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	public User checkLogin(String username, String password) {
		
		User user = userDao.findByUsername(username);
		if(user != null && user.getPassword().equals(password)){
		
			return user;
		}
		return null;
	}

	@Override
	public boolean addUser(User user) {
		// TODO Auto-generated method stub
		
		if(userDao.register(user)==1){
			return true;
		}
		else{
			return false;
		}
		//System.out.println("插入的对象主键为："+user.getId());
	}
	
	@Override
	//添加方法registerNameOnly传入表单中的用户名，用来判断数据库中是否已经存在该用户名
    public boolean registerNameOnly(String username){
        User user = new User();
        user.setUsername(username);
        List<User> userList = new ArrayList<User>();
        userList =  userDao.loginFindNamePwd(username);
        if(userList == null || userList.size()==0){
            return true; 
        }else{
            return false;
        }
    }

}
