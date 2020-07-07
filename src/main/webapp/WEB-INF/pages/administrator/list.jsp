<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>管理员列表</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>密码</th>
        <th>修改</th>
        <th>删除</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${pageinfo.list}" var="administrator" varStatus="status">
        <tr>
            <th>${status.count}</th>
            <td>${administrator.id}</td>
            <td>${administrator.password}</td>
            <td><a href="${app}/administrator/findOne?id=${administrator.id}" class="btn btn-warning"><i class="fa fa-edit"></i> 修改  </a>
            </td>
            <td><a href="${app}/administrator/delete?id=${administrator.id}" class="btn btn-danger"><i class="fa fa-trash-o"></i> 删除 </a>
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
                <a href="${app}/administrator/list?page=1">首页</a>
            </li>
            <li
                    <c:if test="${not pageinfo.hasPreviousPage}">class="disabled" </c:if> >
                <a href="${app}/administrator/list?page=${pageinfo.pageNum-1}">上一页</a>
            </li>
            <c:forEach begin="${pageinfo.navigateFirstPage}" end="${pageinfo.navigateLastPage}" var="i">
                <li <c:if test="${pageinfo.pageNum == i}"> class="active" </c:if>><a
                        href="${app}/administrator/list?page=${i}">${i}</a></li>
            </c:forEach>
            <li
                    <c:if test="${not pageinfo.hasNextPage}">class="disabled" </c:if> >
                <a href="${app}/administrator/list?page=${pageinfo.pageNum+1}">下一页</a>
            </li>
            <li>
                <a href="${app}/administrator/list?page=${pageinfo.pages}">尾页</a>
            </li>
        </ul>
    </div>

</div>

</table>
</body>
</html>
