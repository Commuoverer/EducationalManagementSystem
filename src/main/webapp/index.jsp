

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    //    获取主机和应用的名称
    String app = request.getContextPath();
//    可以将该对象放在session里,只需要在页面调用即可,应该在所有的允许用户直接访问的view中添加
    request.getSession().setAttribute("app", app);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Thema Admin is a simple and easy admin template develop in order to help frontend/backend developers making their job easy and save time in their development. This are compose of 140+ pages in different layouts and examples">
    <meta name="author" content="Lancecoder">

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,300italic,400,400italic,600,700' rel='stylesheet' type='text/css'>

    <style>
        body {
            font-family: 'Open Sans', sans-serif;
            font-size: 14px;
            line-height: 18px;
            text-align: center;
            margin-left: 0;
            margin-right: 0;
            margin-top: 0;
        }

        .wrapper {
            width: 95%;
            margin: 100px auto;
            height: 100%;
        }
        h1, h2, h3 {
            font-family: 'Open Sans', sans-serif;
            text-align: center;
            font-weight: 400;
        }

        h1 {
            margin-bottom: 65px;
        }

        h2 {
            font-size: 1.2em;
        }
        a, a:hover {
            text-decoration: none;
        }

        a:hover {
            color: #406da4;
        }

        img {
            max-width: 100%;
        }

        img:hover {
            opacity: 0.9;
            filter: alpha(opacity:90);
        }

        .preview {
            float: left;
            width: 25%;
            margin: 0 3.2em;
            border: 1px solid #eee;
            padding: 5px;
            border-radius: 5px;
        }

        .clear {
            clear: both;
        }

        .page-header {
            background: #3A434D;
            margin-top: -19px;
            padding: 15px;
        }

        .page-header > h1:first-child {
            font-weight: bold;
            font-size: 40px;
            color: #2ECC71;
        }

        .page-header > h3 {
            color: #fff;
            line-height: .1;
            margin-top: -42px;
        }

        .badge {
            background: #F1C40F;
            color: #fff;
            font-size: 10px;
            padding: 3px;
            border-radius: 5px;
        }

        .copyright {
            margin-top: 50px;
        }
    </style>

</head>
<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" marginwidth="0" marginheight="0">
<div class="page-header">
    <h1>Thema v1.5</h1>
    <h3>Choose admin type below and grab all of them</h3>
</div>
<div class="wrapper">
    <div class="preview">
        <a href="${app}/student/login" target="_blank"><img src="${app}/images/demo/admin1.png" alt="Got 学生登入" /></a>
        <h2><a href="${app}/student/login" target="_blank">学生登入</a></h2>
    </div>

    <div class="preview">
        <a href="${app}/teacher/login" target="_blank"><img src="${app}/images/demo/admin2.png" alt="教师登入" /></a>
        <h2><a href="${app}/teacher/login" target="_blank">教师登入 <span class="badge">New</span></a></h2>
    </div>

    <div class="preview">
        <a href="${app}/administrator/login" target="_blank"><img src="${app}/images/demo/admin3.png" alt="管理员登入" /></a>
        <h2><a href="${app}/administrator/login" target="_blank">管理员登入 <span class="badge">New</span></a></h2>
    </div>

    <br class="clear" />
    <p class="copyright">Copyright &copy; 2020.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
</div>
</body>
</html>