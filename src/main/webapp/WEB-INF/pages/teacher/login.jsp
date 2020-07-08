<%--<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%--%>
<%--    //    获取主机和应用的名称--%>
<%--    String app = request.getContextPath();--%>
<%--//    可以将该对象放在session里,只需要在页面调用即可,应该在所有的允许用户直接访问的view中添加--%>
<%--    request.getSession().setAttribute("app", app);--%>
<%--%>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>登录页面</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<form method="post" action="${app}/teacher/teacherLoginCheck">--%>
<%--    <input type="text" name="tid" placeholder="请输入教师职工号">--%>
<%--    <input type="password" name="password" placeholder="请输入密码">--%>
<%--    <button type="submit">登 录</button>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>



<!DOCTYPE HTML>
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
    <title>Login Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
    <link href="${app}/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <link href="${app}/css/style.css" rel='stylesheet' type='text/css' />
    <!-- font CSS -->
    <!-- font-awesome icons -->
    <link href="${app}/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!-- js-->
    <script src="${app}/js/jquery-1.11.1.min.js"></script>
    <script src="${app}/js/modernizr.custom.js"></script>
    <!--webfonts-->
    <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <!--//webfonts-->
    <!--animate-->
    <link href="${app}/css/animate.css" rel="stylesheet" type="text/css" media="all">
    <script src="${app}/js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <!--//end-animate-->
    <!-- Metis Menu -->
    <script src="${app}/js/metisMenu.min.js"></script>
    <script src="${app}/js/custom.js"></script>
    <link href="${app}/css/custom.css" rel="stylesheet">
    <!--//Metis Menu -->
</head>
<body class="cbp-spmenu-push">
<div class="main-content">

    <!-- main content start-->
    <div id="page-wrapper">
        <div class="main-page login-page ">
            <h3 class="title1">用户登录</h3>
            <div class="widget-shadow">
                <div class="login-top">
                    <h4>Welcome back to Novus AdminPanel ! <br> Not a Member? <a href="signup.html">  Sign Up »</a> </h4>
                </div>
                <div class="login-body">
                    <form method="post" action="${app}/teacher/teacherLoginCheck">
                        <input type="text" name="tid" placeholder="请输入教师职工号">
                        <input type="password" name="password" placeholder="请输入密码">
                        <button type="submit">登 录</button>

                        <div class="forgot-grid">
                            <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Remember me</label>
                            <div class="forgot">
                                <a href="#">forgot password?</a>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </form>
                </div>
            </div>


        </div>
    </div>
    <!--footer-->
    <div class="footer">
    </div>
    <!--//footer-->
</div>
<!-- Classie -->
<script src="${app}/js/classie.js"></script>
<!--scrolling js-->
<script src="${app}/js/jquery.nicescroll.js"></script>
<script src="${app}/js/scripts.js"></script>
<!--//scrolling js-->
<!-- Bootstrap Core JavaScript -->
<script src="${app}/js/bootstrap.js"> </script>
</body>
</html>