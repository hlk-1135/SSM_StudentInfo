package com.hlk.service.impl;

import com.hlk.dao.UserMapper;
import com.hlk.pojo.User;
import com.hlk.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by lenovo on 2017/4/19.
 */

@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    public User getUserByUserName(String user_name) {
        User user1= userMapper.getUserByUserName(user_name);
        return user1;
    }

    public User checkLogin(String user_name,String password) {
        User user = userMapper.getUserByUserName(user_name);
        if(user!=null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }

    public void addUser(User user) {
        userMapper.addUser(user);
    }
}
