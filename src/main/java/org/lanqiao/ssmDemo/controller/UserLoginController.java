package org.lanqiao.ssmDemo.controller;

import org.lanqiao.ssmDemo.pojo.User;
import org.lanqiao.ssmDemo.service.impl.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@Controller
public class UserLoginController {
    @Autowired
    UserLoginService userLoginService;
    @RequestMapping(value = "logion")
    public String login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = userLoginService.userLogin(username);
        if(user != null){
            if(password.equals(user.getPassword())){
                request.getSession().setAttribute("login","欢迎您,"+user.getUsername());
            }else {
                request.getSession().setAttribute("login","登录名或密码错误，请重新输入");
            }
        }else {
            request.getSession().setAttribute("login","登录名或密码错误，请重新输入");
        }
        return "user";
    }
}
