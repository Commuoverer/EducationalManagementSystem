<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>admin页面</title>
</head>
<body >
this is admin
<a href="${app}/student/list" class="btn btn-warning"><i class="fa fa-edit"></i> 学生列表 </a>
<a href="${app}/course/allCourses" class="btn btn-warning"><i class="fa fa-edit"></i> 学生课表 </a>
<a href="${app}/course/oneCourses?sid=${student.sid}" class="btn btn-warning"><i class="fa fa-edit"></i> 本人课表 </a>
<form method="post" action="${app}/student/insert">
    <input type="text" name="sname" placeholder="请输入用户姓名">
    <input type="text" name="password" placeholder="请输入密码">
    <input type="submit" value="添加">
</form>
</body>
</html>