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

    <link href="${app}/css/global-plugins.css" rel="stylesheet" charset="utf-8"/>
    <link href="${app}/vendors/jquery-icheck/skins/all.css" rel="stylesheet" />
    <!-- <link href="../../../assets/vendors/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
    <!-- <link href="../../../assets/css/bootstrap-reset.css" rel="stylesheet"> -->
    <!-- <link href="../../../assets/vendors/font-awesome/css/font-awesome.css" rel="stylesheet"> -->
    <!-- <link href="../../../assets/vendors/pe-icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet" /> -->
    <!-- <link href="../../../assets/vendors/pe-icon-7-stroke/css/helper.css" rel="stylesheet"/> -->
    <!-- <link href="../../../assets/vendors/jquery-notific8/jquery.notific8.css" rel="stylesheet"> -->
    <!-- <link href="../../../assets/vendors/line-icons/line-icons.css" rel="stylesheet" /> -->
    <!-- <link href="../../../assets/vendors/jquery-ui/jquery-ui.min.css" rel="stylesheet"> -->
    <!-- <link href="../../../assets/vendors/dropdowns-enhancement/css/dropdowns-enhancement.css" rel="stylesheet"> -->
    <!-- <link href="../../../assets/vendors/hover/hover.css" rel="stylesheet"> -->
    <!-- <link href="../../../assets/vendors/animate/animate.css" rel="stylesheet"> -->
    <!-- <link href="../../../assets/vendors/tooltipster/css/tooltipster.css" rel="stylesheet" type="text/css" /> -->
    <!-- <link href="../../../assets/vendors/tooltipster/css/themes/tooltipster-light.css" rel="stylesheet" type="text/css" /> -->
    <!-- <link href="../../../assets/vendors/tooltipster/css/themes/tooltipster-noir.css" rel="stylesheet" type="text/css" /> -->
    <!-- <link href="../../../assets/vendors/tooltipster/css/themes/tooltipster-punk.css" rel="stylesheet" type="text/css" /> -->
    <!-- <link href="../../../assets/vendors/tooltipster/css/themes/tooltipster-shadow.css" rel="stylesheet" type="text/css" /> -->
    <!-- <link href="../../../assets/vendors/perfect-scrollbar/css/perfect-scrollbar.min.css" rel="stylesheet" /> -->
    <!-- End Global plugin css -->


    <!-- Custom styles for this template -->
    <link href="${app}/css/theme.css" rel="stylesheet" charset="utf-8"/>
    <link href="${app}/css/style-responsive.css" rel="stylesheet" charset="utf-8"/>
    <link href="${app}/css/class-helpers.css" rel="stylesheet" charset="utf-8"/>

    <!--Color schemes-->
    <link href="${app}/css/colors/green.css" rel="stylesheet" charset="utf-8"/>

    <!--Fonts-->
    <link href="${app}/fonts/Indie-Flower/indie-flower.css" rel="stylesheet" charset="utf-8"/>
    <link href="${app}/fonts/Open-Sans/open-sans.css?family=Open+Sans:300,400,700" rel="stylesheet" charset="utf-8"/>

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]>
    <script src="${app}/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body id="default-scheme" class="form-background">

<!--main content start-->
<div class="bg-overlay"></div>
<section class="registration-login-wrapper">

    <!--======== START LOGIN ========-->
    <div class="row page-login">

        <div class="col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2">

            <div class="form-body bg-white padding-20">
                <div class="row">
                    <div class="col-md-12">

                        <div class="form-header bg-white padding-10 text-center">
                            <h2><strong>上海海洋大学</strong> 教务信息系统</h2>
                            <h3>登录</h3>
                        </div>

                        <form method="post" action="${app}/student/studentLoginCheck">
                            <div class="inner-addon right-addon margin-bottom-15">
                                <i class="fa fa-envelope"></i>
                                <input type="text" class="form-control" name="sid" placeholder="请输入用户名" />
                            </div>
                            <div class="inner-addon right-addon margin-bottom-15">
                                <i class="fa fa-lock"></i>
                                <input type="password" class="form-control" name="password" placeholder="请输入密码" />
                            </div>
                            <div class="row">
                                <div class="col-md-6 text-center">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" class="icheck-aero"> Remember me
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-6 text-center">
<%--                                    <button type="submit">登 录</button>--%>
                                    <button type="submit"  name="Signin" class="btn btn-green btn-raised btn-flat">登入Account</button>
                                </div>
                            </div>
                        </form>
                    </div><!--/col-md-6-->
                </div><!--/row-->

            </div><!--/form-body-->

        </div><!--/col-md-12-->

    </div><!--/row-->
    <!--======== END LOGIN ========-->

</section>

<script src="${app}/js/global-plugins.js"></script>


<!--common script init for all pages-->
<script src="../../../assets/js/theme.js" type="text/javascript" ></script>

<!-- For Form Elements Page Only -->
<script src="${app}/js/forms.js"></script>
<script src="${app}/js/form-validation.js"></script>
<script src="${app}/js/form-wizard.js"></script>
<script src="${app}/js/form-plupload.js"></script>
<script src="${app}/js/form-x-editable.js"></script>

<!-- For Login and registration page Only -->
<script src="${app}/vendors/backstretch/jquery.backstretch.min.js"></script>
<script src="${app}/js/registration-login.js"></script>

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
        App.initSummernote();
        App.initAccordion();
        App.initModal();
        App.initPopover();

    });
</script>


</body>

</html>

<!--===== Footer End ========-->