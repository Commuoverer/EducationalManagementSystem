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
    <!-- <link href="${app}/vendors/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
    <!-- <link href="${app}/css/bootstrap-reset.css" rel="stylesheet"> -->
    <!-- <link href="${app}/vendors/font-awesome/css/font-awesome.css" rel="stylesheet"> -->
    <!-- <link href="${app}/vendors/pe-icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet" /> -->
    <!-- <link href="${app}/vendors/pe-icon-7-stroke/css/helper.css" rel="stylesheet"/> -->
    <!-- <link href="${app}/vendors/jquery-notific8/jquery.notific8.css" rel="stylesheet"> -->
    <!-- <link href="${app}/vendors/line-icons/line-icons.css" rel="stylesheet" /> -->
    <!-- <link href="${app}/vendors/jquery-ui/jquery-ui.min.css" rel="stylesheet"> -->
    <!-- <link href="${app}/vendors/dropdowns-enhancement/css/dropdowns-enhancement.css" rel="stylesheet"> -->
    <!-- <link href="${app}/vendors/hover/hover.css" rel="stylesheet"> -->
    <!-- <link href="${app}/vendors/animate/animate.css" rel="stylesheet"> -->
    <!-- <link href="${app}/vendors/tooltipster/css/tooltipster.css" rel="stylesheet" type="text/css" /> -->
    <!-- <link href="${app}/vendors/tooltipster/css/themes/tooltipster-light.css" rel="stylesheet" type="text/css" /> -->
    <!-- <link href="${app}/vendors/tooltipster/css/themes/tooltipster-noir.css" rel="stylesheet" type="text/css" /> -->
    <!-- <link href="${app}/vendors/tooltipster/css/themes/tooltipster-punk.css" rel="stylesheet" type="text/css" /> -->
    <!-- <link href="${app}/vendors/tooltipster/css/themes/tooltipster-shadow.css" rel="stylesheet" type="text/css" /> -->
    <!-- <link href="${app}/vendors/perfect-scrollbar/css/perfect-scrollbar.min.css" rel="stylesheet" /> -->
    <!-- End Global plugin css -->


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
        <div class="brand">

            <a href="index.html" class="logo">
                Thema Admin
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

            <ul class="nav navbar-nav navbar-left" style="margin-left:30px;">
                <li>
                    <a href="javascript:void(0)" class="btn-menu-grid" title="Menu Grid">
                        <span class="icon-grid"></span>
                    </a>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        Dropdown
                        <span class=" fa fa-angle-down" style="font-size:12px;"></span>
                    </a>
                    <ul class="dropdown-menu animated fadeInUp pull-right">
                        <li>
                            <a href="javascript:void(0);" class="hvr-bounce-to-right">  Submenu 1</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);" class="hvr-bounce-to-right">
                                <span class="badge bg-red pull-right">20%</span>
                                <span>Submenu 2</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);" class="hvr-bounce-to-right">Submenu 3</a>
                        </li>
                        <li><a href="login.html" class="hvr-bounce-to-right">Submenu 4</a>
                        </li>
                    </ul>
                </li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li class="search-box">
                    <input type="text" class="form-control search" placeholder=" Search">
                </li>
                <li role="presentation" class="dropdown">
                    <a href="javascript:void(0);" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                        <span class="pe-7s-mail" style="font-size:22.9px;"></span>
                        <span class="badge bg-color label-danger">6</span>
                    </a>
                    <ul id="menu" class="dropdown-menu list-unstyled msg_list animated fadeInUp" role="menu">
                        <li>
                            <a class="hvr-bounce-to-right">
                                    <span class="image">
                                        <img src="${app}/images/profile.jpg" alt="Profile Image" />
                                    </span>
                                <span>
                                        <span>John Smith</span>
                                        <span class="time">3 mins ago</span>
                                    </span>
                                <span class="message">
                                        Film festivals used to be do-or-die moments for movie makers. They were where...
                                    </span>
                            </a>
                        </li>
                        <li>
                            <a class="hvr-bounce-to-right">
                                    <span class="image">
                                        <img src="${app}/images/profile.jpg" alt="Profile Image" />
                                    </span>
                                <span>
                                        <span>John Smith</span>
                                        <span class="time">3 mins ago</span>
                                    </span>
                                <span class="message">
                                        Film festivals used to be do-or-die moments for movie makers. They were where...
                                    </span>
                            </a>
                        </li>
                        <li>
                            <a class="hvr-bounce-to-right">
                                    <span class="image">
                                        <img src="${app}/images/profile.jpg" alt="Profile Image" />
                                    </span>
                                <span>
                                        <span>John Smith</span>
                                        <span class="time">3 mins ago</span>
                                    </span>
                                <span class="message">
                                        Film festivals used to be do-or-die moments for movie makers. They were where...
                                    </span>
                            </a>
                        </li>
                        <li>
                            <a class="hvr-bounce-to-right">
                                    <span class="image">
                                        <img src="${app}/images/profile.jpg" alt="Profile Image" />
                                    </span>
                                <span>
                                        <span>John Smith</span>
                                        <span class="time">3 mins ago</span>
                                    </span>
                                <span class="message">
                                        Film festivals used to be do-or-die moments for movie makers. They were where...
                                    </span>
                            </a>
                        </li>
                        <li class='top-nav-li-see-all-alerts'>
                            <div class="text-center">
                                <a href="inbox.html">
                                    <strong>See All Alerts</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="javascript:void(0);" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        <img src="${app}/images/profile.jpg" alt="image">John Doe
                        <span class=" fa fa-angle-down"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-usermenu animated fadeInUp pull-right">
                        <li>
                            <a href="app-pages/page-profile-dashboard.html" class="hvr-bounce-to-right">  Profile</a>
                        </li>
                        <li>
                            <a href="app-pages/page-profile-settings.html" class="hvr-bounce-to-right">
                                <span class="badge bg-red pull-right">50%</span>
                                <span>Settings</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);" class="hvr-bounce-to-right">Help</a>
                        </li>
                        <li><a href="app-pages/page-login-2.html" class="hvr-bounce-to-right"><i class=" icon-login pull-right"></i> Log Out</a>
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
                                <p><a href="app-pages/page-profile-dashboard.html">Profile</a></p>
                                <p><a href="app-pages/page-profile-settings.html">Settings</a></p>
                                <p><a href="javascript:void(0)">Help</a></p>
                                <p><a href="app-pages/page-login-2.html">Log Out</a></p>
                            </div>

                        </div>

                        <div class="profile-main">
                            <p class="text-right profile-options"><i class="profile-options-open icon-options-vertical fa-2x"></i></p>
                            <p class="image">
                                <img alt="image" src="${app}/images/profile.jpg" width="80">
                                <span class="status"><i class="fa fa-circle text-success"></i></span>
                            </p>
                            <p>
                                <span class="name">John Doe</span><br>
                                <span class="position" style="font-family: monospace;">Administrator</span>
                            </p>
                        </div>

                    </li>
                    <li class=' '><a href="#" class="hvr-bounce-to-right-sidebar-parent active"><span class='icon-sidebar icon-home fa-2x'></span><span>首页</span></a>
                    </li>
                    <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-portfolio fa-2x'></span><span>学生信息</span></a>
                        <ul class='sub'>
                            <li><a href="${app}/student/list" target="mainF">学生信息查询</a>
                            </li>
                            <li><a href="${app}/student/addForm" target="mainF">学生信息添加</a>
                            </li>
                            <li><a href="${app}/administrator/studentSystem/studentAdd">还要什么</a>
                            </li>

                        </ul>
                    </li>
                    <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-display2 fa-2x'></span><span>教师信息</span></a>
                        <ul class='sub'>
                            <li><a href="${app}/teacher/list" target="mainF">教师信息查询</a>
                            </li>
                            <li><a href="${app}/teacher/addForm" target="mainF">教师信息添加</a>
                            </li>
                            <li><a href='ui-admin/hover-ideas.html'>还要什么</a>
                            </li>
                        </ul>
                    </li>
                    <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-note fa-2x'></span><span>课程信息</span></a>
                        <ul class='sub'>
                            <li><a href="${app}/course/list" target="mainF">课程信息查询</a>
                            </li>
                            <li><a href="${app}/course/addForm" target="mainF">课程信息添加</a>
                            </li>
                            <li><a href='fonts/font-simple-line-icons.html'>还要什么</a>
                            </li>
                        </ul>
                    </li>
                    <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-box1 fa-2x'></span><span>Data Tables</span></a>
                        <ul class='sub'>
                            <li><a href='data-tables/basic-table.html'>Basic Table</a>
                            </li>
                            <li><a href='data-tables/responsive-table.html'>Responsive Table</a>
                            </li>
                            <li><a href='data-tables/dynamic-table.html'>Dynamic Table</a>
                            </li>
                            <li><a href='data-tables/editable-table.html'>Editable Table</a>
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
                    <h2>上海海洋大学教务信息系统</h2>
                    <small>Your admin dashboard.</small>
                </div>

                <div class="pull-right toggle-right-sidebar">
                    <span class="fa fa-outdent fa-2x title-open-right-sidebar"></span>
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
    <aside>
        <div id="right-sidebar" class="right-sidebar-notifcations nav-collapse hide-right-bar-notifications">
            <div class="bs-example bs-example-tabs right-sidebar-tab-notification" data-example-id="togglable-tabs">
                <ul id="right-sidebar-tabs" class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active">
                        <a href="#activities" id="activities-tab" role="tab" data-toggle="tab" aria-controls="activities" aria-expanded="true">Activities</a>
                    </li>
                    <li role="presentation">
                        <a href="#tasks" role="tab" id="tasks-tab" data-toggle="tab" aria-controls="tasks">Tasks</a>
                    </li>
                    <li role="presentation">
                        <a href="#settings" role="tab" id="settings-tab" data-toggle="tab" aria-controls="settings">Settings</a>
                    </li>

                </ul>
                <div id="right-sidebar-tab-content" class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="activities" aria-labelledBy="activities-tab">
                        <div class="right-sidebar-panel-content-heading">
                            <h4><span class="icon-user"></span> Latest user activities</h4>
                            <small>10 Latest Activities</small>
                        </div>
                        <div class="right-sidebar-panel-content animated fadeInRight">

                            <ul class="right-sidebar-list">
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/profile.jpg" width="80" alt="image" />
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - User Login...</h5>
                                        <p>Accessing the system...</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/users/img3.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - Updating...</h5>
                                        <p>Updating user ID 1 ...</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/users/img2.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - Deleting...</h5>
                                        <p>Deleting user message...</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/users/img5.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - Accessing...</h5>
                                        <p>User accessing the sys...</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/profile.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - Viewing...</h5>
                                        <p>Viewing the user...</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/profile.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - Reading...</h5>
                                        <p>Reading user message...</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/profile.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - Registering...</h5>
                                        <p>Registering new user...</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/profile.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - Registering...</h5>
                                        <p>Registering new user...</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/profile.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - Registering...</h5>
                                        <p>Registering new user...</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/profile.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - Registering...</h5>
                                        <p>Registering new user...</p>
                                    </div>
                                </li>

                            </ul>

                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="tasks" aria-labelledBy="tasks-tab">
                        <div class="right-sidebar-panel-content-heading">
                            <h4><span class="icon-list"></span> Recent tasks</h4>
                            <small>15 Ongoing tasks</small>
                        </div>
                        <div class="right-sidebar-panel-content animated fadeInRight">

                            <ul class="right-sidebar-list">
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/profile.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5><a href="#">John Doe - Creating Tasks</a></h5>
                                        <p>To update the sidebar...</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/users/img2.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - Updating Tasks</h5>
                                        <p>To update the header UI...</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/users/img3.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - Deleting Tasks</h5>
                                        <p>Change the content UI...</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/users/img4.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - Updating Tasks</h5>
                                        <p>To update the header UI...</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/users/img5.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - Deleting Tasks</h5>
                                        <p>Change the content UI...</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/users/img4.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - Updating Tasks</h5>
                                        <p>To update the header UI...</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/profile.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - Deleting Tasks</h5>
                                        <p>Change the content UI...</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/profile.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - Updating Tasks</h5>
                                        <p>To update the header UI...</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/profile.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - Deleting Tasks</h5>
                                        <p>Change the content UI...</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/profile.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - Updating Tasks</h5>
                                        <p>To update the header UI...</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/profile.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - Deleting Tasks</h5>
                                        <p>Change the content UI...</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/profile.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - Updating Tasks</h5>
                                        <p>To update the header UI...</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="pull-left thumbnail-hover">
                                        <div class="overflow-hidden">
                                            <img src="${app}/images/profile.jpg" width="80" alt="image"/>
                                        </div>
                                    </div>
                                    <div>
                                        <h5>John Doe - Deleting Tasks</h5>
                                        <p>Change the content UI...</p>
                                    </div>
                                </li>

                            </ul>

                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="settings" aria-labelledBy="settings-tab">
                        <div class="right-sidebar-panel-content-heading">
                            <h4><span class="icon-list"></span> System Settins</h4>
                            <small>80% Completed Settings</small>
                        </div>
                        <div class="right-sidebar-panel-content animated fadeInRight">
                            <ul class="right-sidebar-list">
                                <li>
                                    <label class="switch-input success">
                                        <input type="checkbox" name="switch-checkbox" checked="">
                                        <i data-on="YES" data-off="NO"></i> Email Notifications
                                    </label>
                                </li>
                                <li>
                                    <label class="switch-input success">
                                        <input type="checkbox" name="switch-checkbox">
                                        <i data-on="YES" data-off="NO"></i> Daily Email Notifiactions
                                    </label>
                                </li>
                                <li>
                                    <label class="switch-input success">
                                        <input type="checkbox" name="switch-checkbox" checked="">
                                        <i data-on="YES" data-off="NO"></i> Show user visitors
                                    </label>
                                </li>
                                <li>
                                    <label class="switch-input success">
                                        <input type="checkbox" name="switch-checkbox" checked="">
                                        <i data-on="YES" data-off="NO"></i> Show birthdate
                                    </label>
                                </li>
                                <li>
                                    <label class="switch-input success">
                                        <input type="checkbox" name="switch-checkbox">
                                        <i data-on="YES" data-off="NO"></i> Show address
                                    </label>
                                </li>
                                <li>
                                    <label class="switch-input success">
                                        <input type="checkbox" name="switch-checkbox">
                                        <i data-on="YES" data-off="NO"></i> Payment Recurring
                                    </label>
                                </li>
                                <li>
                                    <label class="switch-input success">
                                        <input type="checkbox" name="switch-checkbox">
                                        <i data-on="YES" data-off="NO"></i> SMS Notifications
                                    </label>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div><!-- /example -->
            <div class="btn-bottom-right-sidebar-close">
                <span class="fa fa-times"></span>
            </div>

        </div>
    </aside>
    <!--===== Right sidebar nofications end ========-->

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