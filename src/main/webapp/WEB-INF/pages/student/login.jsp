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
                    <div class="col-md-6">

                        <div class="form-header bg-white padding-10 text-center">
                            <h2><strong>Login</strong> to your account</h2>
                            <p>Not yet signed up? Click <a href="page-registration-2.html" class="color-green">Sign Up</a> your account.</p>
                        </div>






                        <form action="../index.html">
                            <div class="inner-addon right-addon margin-bottom-15">
                                <i class="fa fa-envelope"></i>
                                <input type="text" class="form-control" placeholder="请输入用户名" />
                            </div>

                            <div class="inner-addon right-addon margin-bottom-15">
                                <i class="fa fa-lock"></i>
                                <input type="password" class="form-control" placeholder="请输入密码" />
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
                                    <button type="submit">登 录</button>
                                    <button type="submit"  name="Signin" class="btn btn-green btn-raised btn-flat">登入Account</button>
                                </div>
                            </div>



                        </form>

                    </div><!--/col-md-6-->

                    <div class="col-md-6">
                        <div class="form-header bg-white padding-10 text-center form-social-header">
                            <h2><strong>Social</strong> authentication</h2>
                        </div>
                        <div class="social-buttons margin-top-20">
                            <button type="button" class="btn btn-lg btn-block btn-primary btn-flat bg-facebook btn-raised"><i class="fa fa-facebook pull-left"></i>Login with Facebook</button>
                            <button type="button" class="btn btn-lg btn-block btn-blue btn-flat bg-twitter btn-raised"><i class="fa fa-twitter pull-left"></i>Login with Twitter</button>
                            <button type="button" class="btn btn-lg btn-block btn-danger btn-flat bg-google btn-raised"><i class="fa fa-google-plus pull-left"></i>Login with Google</button>
                        </div>

                    </div><!--/col-md-6-->
                </div><!--/row-->

                <hr/>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h4>Forgot Password?</h4>
                        <p><a href="#">Click here to reset password</a></p>
                    </div>
                </div>

            </div><!--/form-body-->

        </div><!--/col-md-12-->

    </div><!--/row-->
    <!--======== END LOGIN ========-->

</section>
<!--======== Main Content End ========-->


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
<!-- <script src="../../../assets/js/jquery.js"></script>
<script src="../../../assets/js/jquery-migrate-1.2.1.min.js"></script>
<script src="../../../assets/vendors/jquery.cookie/jquery.cookie.js"></script>
<script src="../../../assets/vendors/jquery-ui/jquery-ui.min.js"></script>
<script src="../../../assets/vendors/jquery-easing/jquery.easing.1.3.js"></script>
<script src="../../../assets/vendors/bootstrap/js/bootstrap.js"></script>
<script src="../../../assets/vendors/jquery/dcjqaccordion.2.7.js"></script>
<script src="../../../assets/vendors/jquery/scrollTo.min.js"></script>
<script src="../../../assets/vendors/jquery/slimscroll.js"></script>
<script src="../../../assets/vendors/jquery/nicescroll.js"></script>
<script src="../../../assets/vendors/progressbar/bootstrap-progressbar.min.js"></script>
<script src="../../../assets/vendors/counter/waypoints.min.js" type="text/javascript" ></script>
<script src="../../../assets/vendors/counter/jquery.counterup.min.js" type="text/javascript" ></script>
<script src="../../../assets/vendors/jquery-icheck/icheck.min.js"></script>
<script src="../../../assets/vendors/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="../../../assets/vendors/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
<script src="../../../assets/vendors/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<script src="../../../assets/vendors/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>
<script src="../../../assets/vendors/summernote/summernote.min.js"></script>
<script src="../../../assets/vendors/jquery.autosize/jquery.autosize.js"></script>
<script src="../../../assets/vendors/jquery.multi-select/js/jquery.multi-select.js"></script>
<script src="../../../assets/vendors/jquery.multi-select/js/jquery.quicksearch.js"></script>
<script src="../../../assets/vendors/typeahead/js/typeahead.bundle.js"></script>
<script src="../../../assets/vendors/typeahead/js/handlebars.min.js"></script>
<script src="../../../assets/vendors/perfect-scrollbar/js/perfect-scrollbar.min.js"></script>
<script src="../../../assets/vendors/select2/select2.min.js"></script>
<script src="../../../assets/vendors/bootstrap-star-rating/js/star-rating.min.js"></script>
<script src="../../../assets/vendors/bootstrap-fileupload/js/bootstrap-fileupload.js"></script>
<script src="../../../assets/vendors/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
<script src="../../../assets/vendors/jquery.validate/jquery.validate.min.js"></script>
<script src="../../../assets/vendors/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
<script src="../../../assets/vendors/dropzone/dropzone.min.js"></script>
<script src="../../../assets/vendors/plupload/js/plupload.full.min.js"></script>
<script src="../../../assets/vendors/plupload/js/jquery.plupload.queue/jquery.plupload.queue.min.js"></script>
<script src="../../../assets/vendors/x-editable/bootstrap3-editable/js/bootstrap-editable.js"></script>
<script src="../../../assets/vendors/x-editable/inputs-ext/address/address.js"></script>
<script src="../../../assets/vendors/x-editable/inputs-ext/typeaheadjs/typeaheadjs.js"></script>
<script src="../../../assets/vendors/owl-carousel/owl.carousel.js"></script>
<script src="../../../assets/vendors/magnific-popup/js/jquery.magnific-popup.js"></script>
<script src="../../../assets/vendors/masonry/masonry.pkgd.min.js"></script>
<script src="../../../assets/vendors/moment.min.js"></script>
<script src="../../../assets/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
<script src="../../../assets/vendors/raphael-min.js" charset="utf-8" ></script>
<script src="../../../assets/vendors/sweetalert/sweetalert.min.js"></script>
<script src="../../../assets/vendors/word-rotator/jquery.wordrotator.min.js"></script>
<script src="../../../assets/vendors/wow-animations/js/wow.min.js"></script>
<script src="../../../assets/vendors/rwd-table/js/rwd-table.min.js?v=5.0.3"></script>
<script src="../../../assets/vendors/jqueryui.sortable.animation/jquery.ui.sortable-animation.js"></script>
<script src="../../../assets/vendors/tooltipster/js/jquery.tooltipster.js" type="text/javascript" ></script>
<script src="../../../assets/vendors/dropdowns-enhancement/js/dropdowns-enhancement.min.js" type="text/javascript"></script>
<script src="../../../assets/vendors/jquery-notific8/jquery.notific8.js" type="text/javascript"></script>
<script src="../../../assets/vendors/date.js"></script>
<script src="../../../assets/vendors/pogo-slider/js/jquery.pogo-slider.min.js" type="text/javascript" ></script>
<script src="../../../assets/vendors/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript" ></script>
<script src="../../../vendors/nestable/jquery.nestable.js" type="text/javascript" ></script>
<script src="../../../assets/vendors/bstooltip/bstooltip.js"></script> -->

<!--##################################################################################
#
# COMMON SCRIPT FOR THIS PAGE
#
##################################################################################-->

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