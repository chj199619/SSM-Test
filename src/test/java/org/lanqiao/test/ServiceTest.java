package org.lanqiao.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.lanqiao.ssmDemo.pojo.User;
import org.lanqiao.ssmDemo.service.impl.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-cfg.xml")
public class ServiceTest {
    @Autowired
    UserLoginService userLoginService;
    @Test
    public void empServiceTest(){
        User user = userLoginService.userLogin("admin123");
        System.out.println(user);
    }
}
