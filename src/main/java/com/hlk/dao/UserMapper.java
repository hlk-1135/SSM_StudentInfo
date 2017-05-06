package com.hlk.dao;

import com.hlk.pojo.User;

/**
 * Created by lenovo on 2017/4/18.
 */
public interface UserMapper {

    public void addUser(User user);
    public User getUserByUserName(String user_name);
}
