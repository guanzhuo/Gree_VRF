<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
  <title>Login Page</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="alternate icon" type="image/png" href="assets/i/favicon.png">
  <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
  <style>
    .header {
      text-align: center;
    }
    .header h1 {
      font-size: 200%;
      color: #333;
      margin-top: 30px;
    }
    .header p {
      font-size: 14px;
    }
  </style>
</head>
<body>
<div class="header">
  <div class="am-g">
    <h1>GREE</h1>
  </div>
  <hr />
</div>
<div class="am-g">
  <div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">
    <br>
    <br>
    <form id="loginSub" action="Login_login.do" method="post" class="am-form">
      <label for="email">邮箱:</label>
      <input class="am-radius" type="text" name="email" id="email" value="">
      <br>
      <label for="password">密码:</label>
      <input class="am-radius" type="password" name="password" id="password" value="">
      <br>
      <label for="remember-me">
        <input id="remember-me" type="checkbox">
        记住密码
      </label>
       <label style="color:red;">
        ${errorMSG}
      </label>
      <br />
      <div class="am-cf">
        <input type="submit" name="" value="登陆" class="am-btn am-btn-primary am-btn-sm am-fr am-radius" onclick="loginSubmit()">
      </div>
    </form>
    <hr>
    <p>© GREE</p>
  </div>
</div>
</body>
</html>
