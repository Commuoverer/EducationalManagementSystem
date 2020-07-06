<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    //    获取主机和应用的名称
    String app = request.getContextPath();
//    可以将该对象放在session里,只需要在页面调用即可,应该在所有的允许用户直接访问的view中添加
    request.getSession().setAttribute("app", app);
%>
<html>
<head>
    <title>登录页面</title>
</head>
<body>
<div>
    <form method="post" action="${app}/student/studentLoginCheck">
        <input type="text" name="sid" placeholder="请输入用户名">
        <input type="password" name="password" placeholder="请输入密码">
        <input type="submit" name="Signin" value=" 登 录 ">
    </form>
</div>
</body>
</html>