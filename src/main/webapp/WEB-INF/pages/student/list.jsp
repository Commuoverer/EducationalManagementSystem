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
        <th>教工号</th>
        <th>教师姓名</th>
        <th>职称</th>
        <th>学院</th>
        <th>修改</th>
        <th>删除</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${pageinfo.list}" var="teacher" varStatus="status">
<%--        <tr>--%>
<%--            <th>${status.count}</th>--%>
<%--            <td>${teacher.tid}</td>--%>
<%--            <td>${teacher.tname}</td>--%>
<%--            <td>${teacher.title}</td>--%>
<%--            <td>${teacher.tdepartment}</td>--%>
<%--            <td><a href="${app}/teacher/findone?id=${teacher.tid}">修改</a></td>--%>
<%--            <td><a href="${app}/teacher/delete?id=${teacher.tid}"> 删除 </a></td>--%>
<%--        </tr>--%>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
