package com.ssm.service;

import com.ssm.dao.UserDao;
import com.ssm.model.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 *
 * @since 2018年09月28日
 */

@Service("userService")
public class UserServiceImpl implements UserService{
    @Resource(name = "userDao")
    UserDao userDao;


    @Override
    public int insertUser(User user) {
        return userDao.insert(user);
    }

    @Override
    public List<User> getUser() {
        return userDao.selectAllUser();
    }

    @Override
    public User findUserById(User user) {
        return userDao.findUserById(user);
    }

    @Override
    public void deleteUser(User user) {
        userDao.deleteUser(user);
    }
}
