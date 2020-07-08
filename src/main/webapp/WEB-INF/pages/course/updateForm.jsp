<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改课表</title>
</head>
<body>
<form method="post" action="${app}/course/update?sid=${course.cid}">
    <input type="text" name="cname" value="${course.cname}">
    <input type="text" name="location" value="${course.location}">
    <input type="text" name="ctime" value="${course.ctime}">
    <input type="text" name="tid" value="${course.tid}">
    <input type="submit" value="更新">
</form>
</body>
</html>
