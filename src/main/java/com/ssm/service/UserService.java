package com.ssm.service;

import com.ssm.model.User;

import java.util.List;

/**
 *
 * @since 2018年09月28日
 */
public interface UserService {
    public List<User> getUser();

    public int insertUser(User user);

    public User findUserById(User user);

    public void deleteUser(User user);
}
