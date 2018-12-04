package com.ssm.dao;

import com.ssm.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 *
 * @since 2018年09月28日
 */

@Repository("userDao")
public interface UserDao {
     int deleteUser(User user);

     int insert(User user);

     User findUserById(User user);

     List<User> selectAllUser();

     void updateById(User user);
}
