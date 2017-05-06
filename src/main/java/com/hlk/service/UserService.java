package com.hlk.service;

import com.hlk.pojo.User;

import java.util.List;

/**
 * Created by lenovo on 2017/4/19.
 */
public interface UserService {

    public void addUser(User user);
    public User getUserByUserName(String user_name);
    public User checkLogin(String user_name,String password);
}
