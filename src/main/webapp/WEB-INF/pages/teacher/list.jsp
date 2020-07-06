<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/7/6
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>用户列表</h2>
<table border="1">
    <thead>
    <tr><th>编号</th><th>id</th><th>用户名</th><th>密码</th><th>修改</th><th>删除</th></tr>
    </thead>
    <tbody>
    <c:forEach items="${teachers}" var="teacher" varStatus="status">
        <tr>
            <th>${status.count}</th>
            <td>${teacher.tid}</td>
            <td>${teacher.tname}</td>
            <td>${teacher.title}</td>
            <td>${teacher.tdepartment}</td>
            <td><a href="${app}/user/findone?id=${user.id}">修改</a>></td>
            <td><a href="${app}/user/delete?id=${user.id}"> 删除 </a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
