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
<body id="default-scheme" class="bg-overlay1">

<!--main content start-->

<section class="registration-login-wrapper">

    <div class="row page-registration">

        <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">

            <div class="form-header bg-white1 padding-10 text-center">
                <font size="7" style=" color: #fbfbfb"><strong>上海海洋大学</strong></font>
                <h3 style="color: #fbfbfb">登录</h3>
            </div>

            <div class="form-body bg-white1 padding-20">

                <form method="post" action="${app}/administrator/adminLoginCheck">
                    <div class="form-group">
                        <label class="lable1" style="color: #fbfbfb">管理员账号</label>
                        <input type="text" class="form-control1" name="id" placeholder="请输入用户名" />
                    </div>
                    <div class="form-group">
                        <label class="lable1" style="color: #fbfbfb">管理员密码</label>
                        <input type="password" class="form-control1" name="password" placeholder="请输入密码" />
                    </div>
                    <div class="row" >

                        <div  align="center">
                            <button type="submit" class="btn btn-green btn-raised btn-flat" > 登 录 </button>
                        </div>
                    </div>
                    <hr/>
                </form>


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