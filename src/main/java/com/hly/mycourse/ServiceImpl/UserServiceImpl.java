package com.hly.mycourse.ServiceImpl;

import com.hly.mycourse.dao.UserDao;
import com.hly.mycourse.pojo.User;
import com.hly.mycourse.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author :hly
 * @date :2018/6/6
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao userDao;
    @Override
    public User selectUserById(String userId) {
        return userDao.selectUserById(userId);
    }
}
