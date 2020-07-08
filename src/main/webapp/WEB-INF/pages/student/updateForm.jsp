<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改用户</title>
</head>
<body>
<form method="post" action="${app}/student/update?sid=${student.sid}">
    <input type="text" name="sname" value="${student.sname}">
    <input type="text" name="password" value="${student.password}">
    <input type="text" name="sex" value="${student.sex}">
    <input type="text" name="age" value="${student.age}">
    <input type="text" name="grade" value="${student.grade}">
    <input type="text" name="sdepartment" value="${student.sdepartment}">
    <input type="text" name="specialty" value="${student.specialty}">
    <input type="submit" value="更新">
</form>
</body>
</html>

