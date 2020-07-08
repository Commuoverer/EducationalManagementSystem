<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    //    获取主机和应用的名称
    String app = request.getContextPath();
//    可以将该对象放在session里,只需要在页面调用即可,应该在所有的允许用户直接访问的view中添加
    request.getSession().setAttribute("app", app);
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="description" content="">
    <meta name="keywords" content="thema bootstrap template, thema admin, bootstrap, admin template, bootstrap admin">

    <meta name="author" content="LanceCoder">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <link rel="shortcut icon" href="">
    <title>Thema Admin Boostrap Template</title>

    <!-- Start Global plugin css -->
    <link href="${app}/css/global-plugins.css" rel="stylesheet">
    <link href="${app}/vendors/jquery-icheck/skins/all.css" rel="stylesheet" />

    <!-- This page plugin css start -->
    <link href="${app}/vendors/maps/css/jquery-jvectormap-2.0.1.css" rel="stylesheet" type="text/css"/>
    <link href="${app}/vendors/morris-chart/morris.css" rel="stylesheet" >
    <link href="${app}/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" />
    <link href="${app}/vendors/jquery-ricksaw-chart/css/rickshaw.css" rel="stylesheet"/>
    <link href="${app}/css/flot-chart.css" rel="stylesheet"/>
    <!-- This page plugin css end -->

    <!-- Custom styles for this template -->
    <link href="${app}/css/theme.css" rel="stylesheet">
    <link href="${app}/css/style-responsive.css" rel="stylesheet"/>
    <link href="${app}/css/class-helpers.css" rel="stylesheet"/>

    <!--Color schemes-->
    <link href="${app}/css/colors/green.css" rel="stylesheet">
    <link href="${app}/css/colors/turquoise.css" rel="stylesheet">
    <link href="${app}/css/colors/blue.css" rel="stylesheet">
    <link href="${app}/css/colors/amethyst.css" rel="stylesheet">
    <link href="${app}/css/colors/cloud.css" rel="stylesheet">
    <link href="${app}/css/colors/sun-flower.css" rel="stylesheet">
    <link href="${app}/css/colors/carrot.css" rel="stylesheet">
    <link href="${app}/css/colors/alizarin.css" rel="stylesheet">
    <link href="${app}/css/colors/concrete.css" rel="stylesheet">
    <link href="${app}/css/colors/wet-asphalt.css" rel="stylesheet">

    <!--Fonts-->
    <link href="${app}/fonts/Indie-Flower/indie-flower.css" rel="stylesheet" />
    <link href="${app}/fonts/Open-Sans/open-sans.css?family=Open+Sans:300,400,700" rel="stylesheet" />

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]>
    <script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>

<body id="default-scheme">

<!--======== Start Style Switcher ========-->
<i class="style-switcher-btn fa fa-cogs hidden-xs"></i>
<div class="style-switcher">
    <div class="style-swticher-header">
        <div class="style-switcher-heading fg-white">Color Switcher</div>
        <div class="theme-close"><i class="icon-close"></i></div>
    </div>

    <div class="style-swticher-body">
        <ul class="list-unstyled">
            <li class="theme-default theme-active" data-style="default"></li>
            <li class="theme-turquoise" data-style="turquoise"></li>
            <li class="theme-blue" data-style="blue"></li>
            <li class="theme-amethyst" data-style="amethyst"></li>
            <li class="theme-cloud" data-style="cloud"></li>
            <li class="theme-sun-flower" data-style="sun-flower"></li>
            <li class="theme-carrot" data-style="carrot"></li>
            <li class="theme-alizarin" data-style="alizarin"></li>
            <li class="theme-concrete" data-style="concrete"></li>
            <li class="theme-wet-ashphalt" data-style="wet-ashphalt"></li>
        </ul>
    </div>
</div><!--/style-switcher-->
<!--======== End Style Switcher ========-->

<section id="container">

    <!--header start-->
    <header class="header fixed-top clearfix">

        <!--logo start-->
        <div class="brand" >

            <a href="index.html" class="logo">
                上海海洋大学教务信息系统
            </a>
            <div class="sidebar-toggle-box">
                <div class="fa fa-bars"></div>
            </div>
        </div>
        <!--logo end-->

        <!--
            *****************************
            ** Start of top navigation **
            *****************************
         -->
        <div class="top-nav">

            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="javascript:void(0);" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        <img src="${app}/images/profile.jpg" alt="image">管理员
                        <span class=" fa fa-angle-down"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-usermenu animated fadeInUp pull-right">
                        <li><a href="${app}/administrator/updateForm" class="hvr-bounce-to-right" target="mainF"><i class=" icon-login pull-right"></i> 修改信息</a>
                        </li>
                        <li><a href="${app}/administrator/logout" class="hvr-bounce-to-right"><i class=" icon-login pull-right"></i> 退出登录</a>
                        </li>
                    </ul>
                </li>

            </ul>

        </div>

        <!--
            *****************************
            *** End of top navigation ***
            *****************************
         -->

    </header>    <!--header end-->

    <!--sidebar start-->
    <aside>
        <div id="sidebar" class="nav-collapse md-box-shadowed">
            <!-- sidebar menu start-->
            <div class="leftside-navigation leftside-navigation-scroll">
                <ul class="sidebar-menu" id="nav-accordion">
                    <li class="sidebar-profile">

                        <div class="profile-options-container">
                            <p class="text-right profile-options"><span class="profile-options-close pe-7s-close fa-2x font-bold"></span></p>

                            <div class="profile-options-list animated zoomIn">

                    <p><a href="${app}/administrator/updateForm" target="mainF">修改信息</a></p>

                    <p><a href="${app}/administrator/logout">退出登录</a></p>
                            </div>

                        </div>

                        <div class="profile-main">
                            <p class="text-right profile-options"><i class="profile-options-open icon-options-vertical fa-2x"></i></p>
                            <p class="image">
                                <img alt="image" src="${app}/images/profile.jpg" width="80">
                                <span class="status"><i class="fa fa-circle text-success"></i></span>
                            </p>
                            <p>
                                <span class="name">管理员</span><br>
                                <span class="position" style="font-family: monospace;">Administrator</span>
                            </p>
                        </div>

                    </li>
                    <li class=' '><a href="#" class="hvr-bounce-to-right-sidebar-parent active"><span class='icon-sidebar icon-home fa-2x'></span><span>首页</span></a>
                    </li>
                    <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar icon-screen-desktop fa-2x'></span><span>学生信息</span></a>
                        <ul class='sub'>
                            <li><a href="${app}/student/list" target="mainF">学生信息查询</a>
                            </li>
                            <li><a href="${app}/student/addForm" target="mainF">学生信息添加</a>
                            </li>
                        </ul>
                    </li>
                    <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-display2 fa-2x'></span><span>教师信息</span></a>
                        <ul class='sub'>
                            <li><a href="${app}/teacher/list" target="mainF">教师信息查询</a>
                            </li>
                            <li><a href="${app}/teacher/addForm" target="mainF">教师信息添加</a>
                            </li>
                        </ul>
                    </li>
                    <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-note fa-2x'></span><span>课程信息</span></a>
                        <ul class='sub'>
                            <li><a href="${app}/course/list" target="mainF">课程信息查询</a>
                            </li>
                            <li><a href="${app}/course/addForm" target="mainF">课程信息添加</a>
                            </li>
                        </ul>
                    </li>
                    <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-box1 fa-2x'></span><span>成绩信息</span></a>
                        <ul class='sub'>
                            <li><a href='${app}/score/addForm' target="mainF">成绩录入</a>
                            </li>
                            <li><a href='${app}/score/list' target="mainF">成绩查询</a>
                            </li>

                        </ul>
                    </li>
                    <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-portfolio fa-2x'></span><span>管理员信息</span></a>
                        <ul class='sub'>
                            <li><a href="${app}/administrator/list" target="mainF">管理员信息查询</a>
                            </li>
                            <li><a href="${app}/administrator/addForm" target="mainF">管理员信息添加</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- sidebar menu end-->
        </div>
    </aside>    <!--sidebar end-->

    <section id="main-content">

        <section class="wrapper">

            <!--======== Grid Menu Start ========-->
            <div id="grid-menu">
                <div class="color-overlay grid-menu-overlay">
                    <div class="grid-icon-wrap grid-icon-effect-8">
                        <a href="#" class="grid-icon icon-envelope font-size-50 turquoise"></a>
                        <a href="#" class="grid-icon icon-user font-size-50 teal"></a>
                        <a href="#" class="grid-icon icon-support font-size-50 peter-river"></a>
                        <a href="#" class="grid-icon icon-settings font-size-50 light-blue"></a>
                        <a href="#" class="grid-icon icon-picture font-size-50 orange"></a>
                        <a href="#" class="grid-icon icon-camrecorder font-size-50 light-orange"></a>
                    </div>
                </div>
            </div>
            <!--======== Grid Menu End ========-->

            <!--======== Page Title and Breadcrumbs Start ========-->
            <div class="top-page-header">

                <div class="page-title">
                    <h3>欢迎使用上海海洋大学教务信息系统</h3>
                    <small>Your admin dashboard.</small>
                </div>

            </div>
            <!--======== Page Title and Breadcrumbs End ========-->
            <div class="row1">
                <iframe name="mainF" frameborder="0" width="100%" height="600"></iframe>
            </div><!--/.row-->

        </section>

    </section>
    <!--======== Main Content End ========-->


    <!--===== Right sidebar nofications start ========-->


</section><!--/.container-->

<!--===== Footer Start ========-->

<!-- Placed js at the end of the document so the pages load faster -->

<!--##################################################################################
#
# Thema GLOBAL JS PLUGINS
#
# NOTE: These libraries are neccessary to run the template so don't remove one of these libraries.
# You can uncomment the following libraries commented and comment the global-plugins.js but it will may cause slow performance of the template because of many links should be load from the server.
#
##################################################################################-->
<script src="${app}/js/global-plugins.js"></script>

<!-- Chart JS -->
<script src="${app}/vendors/chartjs/chart.min.js"></script>
<!--jQuery Flot Chart-->
<script src="${app}/vendors/flot/jquery.flot.full.min.js" type="text/javascript"></script>
<!--jQuery Ricksaw Chart-->
<script src="${app}/vendors/jquery-ricksaw-chart/js/rickshaw.min.js" type="text/javascript" ></script>
<script src="${app}/vendors/jquery-ricksaw-chart/js/d3.v2.js" type="text/javascript" ></script>
<!-- Easy Pie JS -->
<script src="${app}/vendors/easypie/jquery.easypiechart.min.js"></script>
<!--Sparkline JS-->
<script src="${app}/vendors/sparkline/index.js"></script>
<!--Morris Chart-->
<script src="${app}/vendors/morris-chart/morris.min.js"></script>
<!--Skycons JS-->
<script src="${app}/vendors/skycons/skycons.js"></script>
<!-- World Map JS -->
<script src="${app}/vendors/maps/js/jquery-jvectormap-2.0.1.min.js" type="text/javascript" ></script>
<script src="${app}/vendors/maps/js/gdp-data.js" type="text/javascript" ></script>
<script src="${app}/vendors/maps/js/jquery-jvectormap-world-mill-en.js" type="text/javascript" ></script>
<script src="${app}/vendors/maps/js/jquery-jvectormap-us-aea-en.js" type="text/javascript" ></script>
<script src="${app}/vendors/video-js/video.js"></script>
<script>
    videojs.options.flash.swf = "${app}/vendors/video-js/video-js.swf";
</script>


<!--##################################################################################
#
# COMMON SCRIPT FOR THIS PAGE
#
##################################################################################-->
<!--common script init for all pages-->
<script src="${app}/js/theme.js" type="text/javascript" ></script>

<!--script for this page-->
<script src="${app}/js/dashboard-green.js" type="text/javascript" ></script>
<script src="${app}/js/forms.js" type="text/javascript" ></script>

<script type="text/javascript">


    $(document).ready(function(){
        new WOW().init();

        App.initPage();
        App.initLeftSideBar();
        App.initCounter();
        App.initNiceScroll();
        App.initPanels();
        App.initProgressBar();
        App.initSlimScroll();
        App.initNotific8();
        App.initTooltipster();
        App.initStyleSwitcher();
        App.initMenuSelected();
        App.initRightSideBar();
        App.initEmail();
        App.initSummernote();
        App.initAccordion();
        App.initModal();
        App.initPopover();
        App.initOwlCarousel();
        App.initSkyCons();
        App.initWidgets();

        DashboardGreen.initRickShawGraph();
        DashboardGreen.initFlotGraph();
        DashboardGreen.initChartGraph();
        DashboardGreen.initSparklineGraph();
        DashboardGreen.initDateRange();
        DashboardGreen.initWorldMap();
        DashboardGreen.initEasyPieChart();
        DashboardGreen.initMorrisChart();
        DashboardGreen.initTodoList();

    });
</script>


</body>

</html>

<!--===== Footer End ========-->