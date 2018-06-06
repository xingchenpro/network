package com.hly.mycourse.dao;

import com.hly.mycourse.pojo.User;

/**
 * @author :hly
 * @date :2018/6/6
 */
public interface UserDao {
    public User selectUserById(String userID);
}
