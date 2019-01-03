package org.lanqiao.ssmDemo.service.impl.impl;

import org.lanqiao.ssmDemo.mapper.UserMapper;
import org.lanqiao.ssmDemo.pojo.User;
import org.lanqiao.ssmDemo.service.impl.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserLoginServiceImpl implements UserLoginService {
    @Autowired
    UserMapper userMapper;
    @Override
    public User userLogin(String username) {
        User user = userMapper.selectUserByUsername(username);
        return user;
    }
}
