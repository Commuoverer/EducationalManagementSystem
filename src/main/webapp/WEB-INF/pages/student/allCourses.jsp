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
        <th>编号</th>
        <th>课程号</th>
        <th>课程名</th>
        <th>上课地点</th>
        <th>上课时间</th>
        <th>教师职工号</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${pageinfo.list}" var="course" varStatus="status">
        <tr>
            <th>${status.count}</th>
            <td>${course.cid}</td>
            <td>${course.cname}</td>
            <td>${course.location}</td>
            <td>${course.ctime}</td>
            <td>${course.teacher.tid}</td>
            <td><a href="${app}/user/findOne?id=${user.id}" class="btn btn-warning"><i class="fa fa-edit"></i> 修改 </a></td>
            <td><a href="${app}/user/delete?id=${user.id}" class="btn btn-danger"><i class="fa fa-trash-o"></i> 删除 </a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
