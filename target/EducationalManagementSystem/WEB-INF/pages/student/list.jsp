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
        <th>专业</th>
        <th>修改</th>
        <th>删除</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${pageinfo.list}" var="student" varStatus="status">
        <tr>
            <th>${status.count}</th>
            <td>${student.sid}</td>
            <td>${student.sname}</td>
            <td>${student.sex}</td>
            <td>${student.age}</td>
            <td>${student.grade}</td>
            <td>${student.sdepartment}</td>
            <td>${student.specialty}</td>
            <td><a href="${app}/student/findOne?id=${student.sid}" class="btn btn-warning"><i class="fa fa-edit"></i> 修改
            </a>
            </td>
            <td><a href="${app}/student/delete?id=${student.sid}" class="btn btn-danger"><i class="fa fa-trash-o"></i> 删除 </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="row">
    <div class="col-md-8 col-xs-12">
        <ul class="pagination">
            <li
                    <c:if test="${pageinfo.isFirstPage}">class="disabled" </c:if> >
                <a href="${app}/student/list?page=1">首页</a>
            </li>
            <li
                    <c:if test="${not pageinfo.hasPreviousPage}">class="disabled" </c:if> >
                <a href="${app}/student/list?page=${pageinfo.pageNum-1}">上一页</a>
            </li>
            <c:forEach begin="${pageinfo.navigateFirstPage}" end="${pageinfo.navigateLastPage}" var="i">
                <li <c:if test="${pageinfo.pageNum == i}"> class="active" </c:if>><a
                        href="${app}/student/list?page=${i}">${i}</a></li>
            </c:forEach>
            <li
                    <c:if test="${not pageinfo.hasNextPage}">class="disabled" </c:if> >
                <a href="${app}/student/list?page=${pageinfo.pageNum+1}">下一页</a>
            </li>
            <li>
                <a href="${app}/student/list?page=${pageinfo.pages}">尾页</a>
            </li>
        </ul>
    </div>

</div>

</table>
</body>
</html>
