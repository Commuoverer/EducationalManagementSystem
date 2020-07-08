<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    //    获取主机和应用的名称
    String app = request.getContextPath();
//    可以将该对象放在session里,只需要在页面调用即可,应该在所有的允许用户直接访问的view中添加
    request.getSession().setAttribute("app",app);
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

    <link href="${app}/css/global-plugins.css" rel="stylesheet">
    <link href="${app}/vendors/jquery-icheck/skins/all.css" rel="stylesheet" />


    <!--This css plugins uses on this page only-->
    <link href="${app}/vendors/summernote/summernote.css" rel="stylesheet" />
    <link href="${app}/vendors/bootstrap-datepicker/css/bootstrap-datepicker.css" rel="stylesheet" />
    <link href="${app}/vendors/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" />
    <link href="${app}/vendors/bootstrap-colorpicker/css/bootstrap-colorpicker.css" rel="stylesheet" />
    <link href="${app}/vendors/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet" />
    <link href="${app}/vendors/summernote/summernote-bs3.css" rel="stylesheet" />
    <link href="${app}/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" />
    <link href="${app}/vendors/jquery.multi-select/css/multi-select.css" rel="stylesheet" />
    <link href="${app}/vendors/typeahead/css/typeahead.css" rel="stylesheet" />
    <link href="${app}/vendors/select2/select2.css" rel="stylesheet" />
    <link href="${app}/vendors/ios-switch/css/switch.css" rel="stylesheet" />
    <link href="${app}/vendors/bootstrap-star-rating/css/star-rating.css" rel="stylesheet" />
    <link href="${app}/vendors/bootstrap-fileupload/css/bootstrap-fileupload.css" rel="stylesheet" />

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


<body id="default-scheme" class="theme-sidebar-2">

<section id="container">

    <section class="wrapper">

        <!--======== START CLIENT DETAILS FORM ========-->
        <div class="col-md-12">

            <div class="c_panel">

                <div class="c_title">
                    <h2>学生信息</h2>
                    <ul class="nav navbar-right panel_options">
                        <li>
                            <a class="full-screen">
                                <span class="icon-size-fullscreen"></span>
                            </a>
                        </li>
                        <li>
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                </div><!--/.c_title-->

                <div class="c_content" style="font-size: 15px">

                    <table class="table">
                        <thead>
                        <tr>
                            <th>编号</th>
                            <th>用户名</th>
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
                    <table>
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

                </div><!--/.c_content-->

            </div><!--/.c_panels-->

        </div><!--/col-md-6-->
        <!--======== END BUG TRACKER FORM ========-->
    </section>

</section><!--/.container-->


<script src="${app}/js/global-plugins.js"></script>

<!--common script init for all pages-->
<script src="${app}/js/theme.js" type="text/javascript" ></script>

<!-- For for the page that has form only -->
<script src="${app}/js/forms.js"></script>
<script src="${app}/js/form-validation.js"></script>
<script src="${app}/js/form-wizard.js"></script>
<script src="${app}/js/form-plupload.js"></script>
<script src="${app}/js/form-x-editable.js"></script>

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

