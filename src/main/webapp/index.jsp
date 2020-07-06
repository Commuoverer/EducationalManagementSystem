<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    //    获取主机和应用的名称
    String app = request.getContextPath();
//    可以将该对象放在session里,只需要在页面调用即可,应该在所有的允许用户直接访问的view中添加
    request.getSession().setAttribute("app",app);
%>

<html>
<body>
<h2>你的登录方式</h2>

<a href="${app}/student/login">学生登录</a>
<a href="${app}/teacher/login">教师登录</a>

</body>
</html>
