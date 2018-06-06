package com.hly.mycourse.service;

import com.hly.mycourse.pojo.User;

/**
 * @author :hly
 * @date :2018/6/6
 */
public interface UserService {
    public User selectUserById(String userId);
}
