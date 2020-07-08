<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    //    获取主机和应用的名称
    String app = request.getContextPath();
//    可以将该对象放在session里,只需要在页面调用即可,应该在所有的允许用户直接访问的view中添加
    request.getSession().setAttribute("app",app);
%>
<html>
<head>
    <title>修改课表</title>
</head>
<body>


<form method="get" action="${app}/course/update?cid=${course.get(0).cid}">
    <input type="text" name="cid" value="${course.get(0).cid}" style="display:none ">
    <input type="text" name="cname" value="${course.get(0).cname}">
    <input type="text" name="location" value="${course.get(0).location}">
    <input type="text" name="ctime" value="${course.get(0).ctime}">
    <input type="text" name="tid" value="${course.get(0).teacher.tid}">
    <input type="submit" value="更新">
</form>

</body>
</html>
