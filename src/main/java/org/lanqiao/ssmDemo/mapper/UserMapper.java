package org.lanqiao.ssmDemo.mapper;

import org.lanqiao.ssmDemo.pojo.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
//    根据用户名查询用户
    public User selectUserByUsername(String username);
}
