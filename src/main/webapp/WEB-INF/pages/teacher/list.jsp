<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>教师列表</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>编号</th>
        <th>id</th>
        <th>用户名</th>
        <th>密码</th>
        <th>修改</th>
        <th>删除</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${pageinfo.list}" var="user" varStatus="status">
        <tr>
            <th>${status.count}</th>
            <td>${user.id}</td>
            <td>${user.username}</td>
            <td>${user.password}</td>
            <td><a href="${app}/user/findOne?id=${user.id}" class="btn btn-warning"><i class="fa fa-edit"></i> 修改 </a></td>
            <td><a href="${app}/user/delete?id=${user.id}" class="btn btn-danger"><i class="fa fa-trash-o"></i> 删除 </a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
