<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/9/4
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>登录管理</title>
    <meta name="description" content="登录界面">
    <meta name="keywords" content="登录界面">
    <link href="" rel="stylesheet">
    <style>
        body,p,div,ul,li,h1,h2,h3,h4,h5,h6{
            margin:0;
            padding: 0;
        }
        body{
            background: #E9E9E9;
        }
        #login{
            width: 400px;
            height: 250px;
            background: #FFF;
            margin:200px auto;
            position: relative;
        }
        #login h1{
            text-align:center;
            position:absolute;
            left:120px;
            top:-40px;
            font-size:21px;
        }
        #login form p{
            text-align: center;
        }
        #user{

            width: 200px;
            height: 30px;
            border:solid #ccc 1px;
            border-radius: 3px;
            padding-left: 32px;
            margin-top: 50px;
            margin-bottom: 10px;
        }
        #pwd{

            width: 200px;
            height: 30px;
            border:solid #ccc 1px;
            border-radius: 3px;
            padding-left: 32px;
            margin-bottom: 10px;
        }
        #submit{
            width: 232px;
            height: 30px;
            background: rgba(0,0,0,.1);
            border:solid #ccc 1px;
            border-radius: 3px;
        }
        #submit:hover{
            cursor: pointer;
            background:#D8D8D8;
        }
        form div{
            margin-left: 40px;
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
<div id="login">
    <h1>登录管理</h1>
    <form action="/logion.do" method="post">
        <p><input type="text" name="username" id="user" placeholder="用户名" onblur="checkName()" >
        <div id="add_prompt" style="color:red; " >字母开头，包含字母数字，长度为6到12位！</div>
        </p>

        <p><input type="password" name="password" id="pwd" placeholder="密码" onblur="checkPwd()">
        <div id="add_pwd" style="color:red">由字母数字下划线组成的长度为6到16位!</div>
        </p>

        <p><input type="submit" id="submit" value="登录"></p>
    </form>
</div>
<script>
    //用户名不能为空
    function checkName() {
        var add = document.getElementById("user").value;
        var add_prompt = document.getElementById("add_prompt");
        add_prompt.innerHTML = "";
        var reg = /^[a-zA-Z][a-zA-Z0-9]{6,12}$/;
        if(add == ""){
            add_prompt.innerHTML = "用户名不能为空";
            return false;
        }else if(reg.test(add) == false){
            add_prompt.innerHTML = "用户名不符合";
            return false;
        }
        return true;
    }
    //密码不能为空
    function checkPwd() {
        var add = document.getElementById("pwd").value;
        var add_pwd = document.getElementById("add_pwd");
        add_pwd.innerHTML = "";
        var reg =/^[a-zA-Z][a-zA-Z0-9]{6,12}$/;

        if(add == ""){
            add_pwd.innerHTML = "密码不能为空";
            return false;
        }else if(reg.test(add) == false){
            add_pwd.innerHTML = "密码不符合";
            return false;
        }
        return true;
    }
</script>
</body>
</html>