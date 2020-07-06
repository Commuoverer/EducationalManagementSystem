<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学生列表</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>学号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>年龄</th>
        <th>级别</th>
        <th>学院</th>
        <th>学院</th>
        <th>专业</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${pageinfo.list}" var="student" varStatus="status">
        <tr>
            <th>${status.count}</th>
            <td>${student.sid}</td>
            <td>${student.sname}</td>
            <td>${student.sex}</td>
            <td><a href="${app}/user/findOne?id=${user.id}" class="btn btn-warning"><i class="fa fa-edit"></i> 修改 </a></td>
            <td><a href="${app}/user/delete?id=${user.id}" class="btn btn-danger"><i class="fa fa-trash-o"></i> 删除 </a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
