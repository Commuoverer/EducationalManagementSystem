
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


    <!--For this page uses this css plugin only-->
    <link href="${app}/css/table-responsive.css" rel="stylesheet"/>
    <link href="${app}/vendors/datatable/bootstrap/dataTables.bootstrap.css" rel="stylesheet">

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

<!--
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* Thema Color Schemes
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

* Just add the attribute value to the attribute ID in <body> element
* List of color scheme values that supported to this theme
    - default-scheme - the default is green color
    - alizarin-scheme
    - amethyst-scheme
    - blue-scheme
    - carrot-scheme
    - cloud-scheme
    - concrete-scheme
    - sun-flower-scheme
    - turquoise-scheme
    - wet-asphalt-scheme

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-->


<!--
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* Thema Layout Options
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

* Lists of layout options just follow the instructions if you want to use this feature
    > Boxed Page
        - Just add class "fixed-width-unfixed-header" in <body> element
        - and add class "unfixed-header" also in  <div class="leftside-navigation"> just search "leftside-navigation"
        - and add class also "unfixed-header" to the <section id="main-content"> element just search it

    > Boxed Page + Fixed Header
        - Just add class "fixed-width" in <body> element
        - and add class also "boxed-page-fixed-header" to the <section id="main-content"> element just search it

    > Boxed Page + No sidebar
        - Just add class "fixed-width-unfixed-header no-sidebar" in <body> element
        - and add class also "unfixed-header merge-left" to the <section id="main-content"> element just search it

    > Boxed Page + No sidebar + Fixed header
        - Just add class "fixed-width no-sidebar" in <body> element
        - and add class also "merge-left" to the <section id="main-content"> element just search it

    > Full width + Unfixed header
        - Just add class "full-content-unfixed-header" in <body> element
        - and add class also "merge-left" to the <section id="main-content"> element just search it

    > Right Sidebar
        - Just follow the sample page
        - the important to do is replace "<section id="main-content">" to "<section id="main-content-right">"

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-->
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

            <a href="../index.html" class="logo">
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
                            <a href="../app-pages/page-profile-dashboard.html" class="hvr-bounce-to-right">  Profile</a>
                        </li>
                        <li>
                            <a href="../app-pages/page-profile-settings.html" class="hvr-bounce-to-right">
                                <span class="badge bg-red pull-right">50%</span>
                                <span>Settings</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);" class="hvr-bounce-to-right">Help</a>
                        </li>
                        <li><a href="../app-pages/page-login-2.html" class="hvr-bounce-to-right"><i class=" icon-login pull-right"></i> Log Out</a>
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

    </header>
    <!--header end-->

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
                    <li class='../index.html'><a href="#" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar icon-home fa-2x'></span><span>Dashboard</span></a></li>
                    <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar icon-screen-desktop fa-2x'></span><span>Layouts</span></a>
                        <ul class='sub'>
                            <li class="sub-menu"><a href="javascript:void(0);">Boxed Page</a>
                                <ul class='sub active'>
                                    <li><a href='../layouts/boxed_page.html'>Default</a>
                                    </li>
                                    <li><a href='../layouts/boxed_page_fixed_header.html'>Default + Fixed Header</a>
                                    </li>
                                    <li><a href='../layouts/boxed_page_no_sidebar.html'>No sidebar</a>
                                    </li>
                                    <li><a href='../layouts/boxed_page_no_sidebar_fixed_header.html'>No sidebar + Fixed Header</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a href='../layouts/full_width_content.html'>Full width content</a>
                            </li>
                            <li><a href='../layouts/blank.html'>Blank Page</a>
                            </li>
                        </ul>
                    </li>
                    <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-portfolio fa-2x'></span><span>UI Elements</span></a>
                        <ul class='sub'>
                            <li><a href='../ui-elements/class-helpers.html'>Class Helpers</a>
                            </li>
                            <li><a href='../ui-elements/accordions.html'>Accordions</a>
                            </li>
                            <li><a href='../ui-elements/alerts.html'>Alerts</a>
                            </li>
                            <li><a href='../ui-elements/buttons.html'>Buttons</a>
                            </li>
                            <li><a href='../ui-elements/draggable-portlet.html'>Draggable Portlet</a>
                            </li>
                            <li><a href='../ui-elements/grids.html'>Grids</a>
                            </li>
                            <li><a href='../ui-elements/labels-badges.html'>Labels and Badges</a>
                            </li>
                            <li><a href='../ui-elements/list-group.html'>List Group</a>
                            </li>
                            <li><a href='../ui-elements/modal.html'>Modal</a>
                            </li>
                            <li><a href='../ui-elements/nestable.html'>Nestable</a>
                            </li>
                            <li><a href='../ui-elements/pagination.html'>Pagination</a>
                            </li>
                            <li><a href='../ui-elements/panels.html'>Panels</a>
                            </li>
                            <li><a href='../ui-elements/progressbar.html'>Progress Bar</a>
                            </li>
                            <li><a href='../ui-elements/tabs.html'>Tabs</a>
                            </li>
                            <li><a href='../ui-elements/tooltips_popover.html'>Tooltips and Popover</a>
                            </li>
                            <li><a href='../ui-elements/typography.html'>Typography</a>
                            </li>
                        </ul>
                    </li>
                    <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-display2 fa-2x'></span><span>UI Admin</span></a>
                        <ul class='sub'>
                            <li><a href='../ui-admin/animatecss.html'>Animate CSS</a>
                            </li>
                            <li><a href='../ui-admin/hovercss.html'>Hover CSS</a>
                            </li>
                            <li><a href='../ui-admin/hover-ideas.html'>Hover Ideas</a>
                            </li>
                            <li><a href='../ui-admin/icheck.html'>iCheck</a>
                            </li>
                            <li><a href='../ui-admin/tooltipster.html'>Tooltipster</a>
                            </li>
                            <li><a href='../ui-admin/sweetalert.html'>Sweet Alert</a>
                            </li>
                            <li><a href='../ui-admin/counter.html'>Counter</a>
                            </li>
                            <li><a href='../ui-admin/word-rotator.html'>Word Rotator</a>
                            </li>
                            <li><a href='../ui-admin/wow-animations.html'>Wow animations</a>
                            </li>
                            <li><a href='../ui-admin/owl-carousel.html'>Owl Carousel</a>
                            </li>
                            <li><a href='../ui-admin/magnific-popup.html'>Magnific Popup</a>
                            </li>
                        </ul>
                    </li>
                    <li class=' '><a href="../ui-widgets/widgets.html" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-ribbon fa-2x'></span><span>UI Widgets <span class="badge label-info">23</span></span></a>
                    </li>
                    <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-note fa-2x'></span><span>Fonts</span></a>
                        <ul class='sub'>
                            <li><a href='../fonts/font-awesome.html'>Font Awesome</a>
                            </li>
                            <li><a href='../fonts/font-icon-7stroke.html'>Pe Icon 7 Stroke </a>
                            </li>
                            <li><a href='../fonts/font-simple-line-icons.html'>Simple Line Icons</a>
                            </li>
                            <li><a href='../fonts/font-glyphicons.html'>Glyphicons</a>
                            </li>
                        </ul>
                    </li>
                    <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent active"><span class='icon-sidebar pe-7s-box1 fa-2x'></span><span>Data Tables</span></a>
                        <ul class='sub'>
                            <li><a href='../data-tables/basic-table.html' class="active">Basic Table</a>
                            </li>
                            <li><a href='../data-tables/responsive-table.html'>Responsive Table</a>
                            </li>
                            <li><a href='../data-tables/dynamic-table.html'>Dynamic Table</a>
                            </li>
                            <li><a href='../data-tables/editable-table.html'>Editable Table</a>
                            </li>
                        </ul>
                    </li>
                    <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-calculator      fa-2x'></span><span>UI Form</span></a>
                        <ul class='sub'>
                            <li><a href='../ui-form/form-elements.html'>Form Elements</a>
                            </li>
                            <li><a href='../ui-form/advanced-form.html'>Advanced Components</a>
                            </li>
                            <li><a href='../ui-form/form-wizard.html'>Form Wizard</a>
                            </li>
                            <li><a href='../ui-form/form-validation.html'>Form Validation</a>
                            </li>
                            <li><a href='../ui-form/advanced-form-upload.html'>Advanced Form Upload</a>
                            </li>
                            <li><a href='../ui-form/x-editable.html'>X-editable</a>
                            </li>
                        </ul>
                    </li>
                    <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-albums fa-2x'></span><span>Form Templates <span class="badge label-info">20</span></span></a>
                        <ul class='sub'>
                            <li class="sub-menu"><a href="javascript:void(0);">Business</a>
                                <ul class='sub'>
                                    <li><a href='../form-templates/business-bug-tracker.html'>Bug Tracker</a>
                                    </li>
                                    <li><a href='../form-templates/business-client-details.html'>Client Details</a>
                                    </li>
                                    <li><a href='../form-templates/business-complaints.html'>Complaints</a>
                                    </li>
                                    <li><a href='../form-templates/business-tpl-contact-us.html'>Contact Us</a>
                                    </li>
                                    <li><a href='../form-templates/business-email-subscription.html'>Email Subscription</a>
                                    </li>
                                    <li><a href='../form-templates/business-software-evaluation.html'>Software Evaluation</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="sub-menu"><a href="javascript:void(0);">Human Resources</a>
                                <ul class='sub'>
                                    <li><a href='../form-templates/hr-employee-emergency-information.html'>Employee Emergency Information</a>
                                    </li>
                                    <li><a href='../form-templates/hr-employee-evaluation.html'>Employee Evaluation</a>
                                    </li>
                                    <li><a href='../form-templates/hr-employee-satisfaction.html'>Employee Satisfaction</a>
                                    </li>
                                    <li><a href='../form-templates/hr-job-application.html'>Job Application</a>
                                    </li>
                                    <li><a href='../form-templates/hr-resignation-form.html'>Resignation Form</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="sub-menu"><a href="javascript:void(0);">Requests</a>
                                <ul class='sub'>
                                    <li><a href='../form-templates/requests-leave-application.html'>Leave Application</a>
                                    </li>
                                    <li><a href='../form-templates/requests-product-review.html'>Prodoct Review</a>
                                    </li>
                                    <li><a href='../form-templates/requests-software-request.html'>Software Request</a>
                                    </li>
                                    <li><a href='../form-templates/requests-testimonial.html'>Testimonial</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="sub-menu"><a href="javascript:void(0);">Construction</a>
                                <ul class='sub'>
                                    <li><a href='../form-templates/construction-client-review.html'>Client Review</a>
                                    </li>
                                    <li><a href='../form-templates/construction-location-updates.html'>Location Updates</a>
                                    </li>
                                    <li><a href='../form-templates/construction-on-site-inquiries.html'>On-site Inquiries</a>
                                    </li>
                                    <li><a href='../form-templates/construction-status-updates.html'>Status Updates</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="sub-menu"><a href="javascript:void(0);">Non-profit</a>
                                <ul class='sub'>
                                    <li><a href='../form-templates/non-profit-donation-form.html'>Donation Form</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-mail fa-2x'></span><span>Mail</span></a>
                        <ul class='sub'>
                            <li><a href='../mail/email.html'>Emails</a>
                            </li>
                            <li><a href='../mail/create_email.html'>Create Email</a>
                            </li>
                            <li><a href='../mail/view_email.html'>View Email</a>
                            </li>
                        </ul>
                    </li>
                    <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-graph fa-2x'></span><span>Charts</span></a>
                        <ul class='sub'>
                            <li><a href='../charts/chart-morris.html'>Morris</a>
                            </li>
                            <li><a href='../charts/chart-js.html'>Chartjs</a>
                            </li>
                            <li><a href='../charts/chart-flotchart.html'>Flot Charts</a>
                            </li>
                            <li><a href='../charts/chart-c3.html'>C3 Chart</a>
                            </li>
                            <li><a href='../charts/chart-sparkline.html'>Sparkline</a>
                            </li>
                            <li><a href='../charts/chart-ricksaw.html'>Ricksaw</a>
                            </li>
                        </ul>
                    </li>
                    <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-map-marker fa-2x'></span><span>Maps <span class="badge label-info">22</span></span></a>
                        <ul class='sub'>
                            <li class="sub-menu"><a href="javascript:void(0);">Google Map</a>
                                <ul class='sub'>
                                    <li><a href='../maps/google-map-basic.html'>Basic Map</a>
                                    </li>
                                    <li><a href='../maps/google-map-events.html'>Map Events</a>
                                    </li>
                                    <li><a href='../maps/google-map-markers.html'>Map Makers</a>
                                    </li>
                                    <li><a href='../maps/google-map-geolocation.html'>Map Geolocation</a>
                                    </li>
                                    <li><a href='../maps/google-map-geocoding.html'>Map Geocoding</a>
                                    </li>
                                    <li><a href='../maps/google-map-polylines.html'>Map Polylines</a>
                                    </li>
                                    <li><a href='../maps/google-map-overlays.html'>Map Overlays</a>
                                    </li>
                                    <li><a href='../maps/google-map-polygon.html'>Map Polygon</a>
                                    </li>
                                    <li><a href='../maps/google-map-routes.html'>Map Routes</a>
                                    </li>
                                    <li><a href='../maps/google-map-advanced-routes.html'>Map Advanced Routes</a>
                                    </li>
                                    <li><a href='../maps/google-map-static.html'>Map Static</a>
                                    </li>
                                    <li><a href='../maps/google-map-static-markers.html'>Map Static Markers</a>
                                    </li>
                                    <li><a href='../maps/google-map-static-polylines.html'>Map Static Polylines</a>
                                    </li>
                                    <li><a href='../maps/google-map-context-menu.html'>Map Context Menu</a>
                                    </li>
                                    <li><a href='../maps/google-map-geofences.html'>Map Geofences</a>
                                    </li>
                                    <li><a href='../maps/google-map-custom-controls.html'>Map Custom Controls</a>
                                    </li>
                                    <li><a href='../maps/google-map-fusion-table-layers.html'>Map Fusion Tables layers</a>
                                    </li>
                                    <li><a href='../maps/google-map-kml-georss-layers.html'>Map KML and GeoRSS layers</a>
                                    </li>
                                    <li><a href='../maps/google-map-street-view-panoramas.html'>Map Street View Panoramas</a>
                                    </li>
                                    <li><a href='../maps/google-map-interacting-ui.html'>Map Interacting with UI</a>
                                    </li>
                                    <li><a href='../maps/google-map-clustering.html'>Map Clustering</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a href='../maps/vector-map.html'>Vector Map</a>
                            </li>
                        </ul>
                    </li>
                    <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-box2 fa-2x'></span><span>App Pages <span class="badge label-success">45</span></span></a>
                        <ul class='sub'>
                            <li><a href='../app-pages/page-user-management.html'>User Management</a>
                            </li>
                            <li class="sub-menu"><a href="javascript:void(0);">User Profile</a>
                                <ul class='sub'>
                                    <li><a href='../app-pages/page-profile-dashboard.html'>Profile Dashboard</a>
                                    </li>
                                    <li><a href='../app-pages/page-profile-about.html'>Profile About</a>
                                    </li>
                                    <li><a href='../app-pages/page-profile-timeline.html'>Profile Timeline</a>
                                    </li>
                                    <li><a href='../app-pages/page-profile-projects.html'>Profile Projects</a>
                                    </li>
                                    <li><a href='../app-pages/page-profile-gallery.html'>Profile Gallery</a>
                                    </li>
                                    <li><a href='../app-pages/page-profile-settings.html'>Profile Settings</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="sub-menu"><a href="javascript:void(0);">Project Management</a>
                                <ul class='sub'>
                                    <li><a href='../app-pages/page-project-all.html'>All Projects</a>
                                    </li>
                                    <li><a href='../app-pages/page-project-view.html'>View Projects</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="sub-menu"><a href="javascript:void(0);">Services</a>
                                <ul class='sub'>
                                    <li><a href='../app-pages/page-services-1.html'>Services 1</a>
                                    </li>
                                    <li><a href='../app-pages/page-services-2.html'>Services 2</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="sub-menu"><a href="javascript:void(0);">Login &amp; Registration</a>
                                <ul class='sub'>
                                    <li><a href='../app-pages/page-registration-1.html'>Registration 1</a>
                                    </li>
                                    <li><a href='../app-pages/page-registration-2.html'>Registration 2</a>
                                    </li>
                                    <li><a href='../app-pages/page-login-1.html'>Login 1</a>
                                    </li>
                                    <li><a href='../app-pages/page-login-2.html'>Login 2</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="sub-menu"><a href="javascript:void(0);">Errors</a>
                                <ul class='sub'>
                                    <li><a href='../app-pages/page-error-404.html'>404 Error</a>
                                    </li>
                                    <li><a href='../app-pages/page-error-500.html'>500 Error</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="sub-menu"><a href="javascript:void(0);">Timelines</a>
                                <ul class='sub'>
                                    <li><a href='../app-pages/page-timeline-1.html'>Timeline 1</a>
                                    </li>
                                    <li><a href='../app-pages/page-timeline-2.html'>Timeline 2</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="sub-menu"><a href="javascript:void(0);">Forum</a>
                                <ul class='sub'>
                                    <li><a href='../app-pages/page-main-forum.html'>Main</a>
                                    </li>
                                    <li><a href='../app-pages/page-forum-details.html'>Details</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="sub-menu"><a href="javascript:void(0);">Email Templates</a>
                                <ul class='sub'>
                                    <li><a href='../app-pages/page-email-template-1.html'>Email Templates 1</a>
                                    </li>
                                    <li><a href='../app-pages/page-email-template-2.html'>Email Templates 2</a>
                                    </li>
                                    <li><a href='../app-pages/page-email-template-3.html'>Email Templates 3</a>
                                    </li>
                                    <li><a href='../app-pages/page-email-template-4.html'>Email Templates 4</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="sub-menu"><a href="javascript:void(0);">Ecommerce</a>
                                <ul class='sub'>
                                    <li><a href='../app-pages/page-ecommerce-dashboard.html'>Dashboard</a>
                                    </li>
                                    <li><a href='../app-pages/page-ecommerce-products.html'>Product Lists</a>
                                    </li>
                                    <li><a href='../app-pages/page-ecommerce-view-product.html'>View Product</a>
                                    </li>
                                    <li><a href='../app-pages/page-ecommerce-cart-summary.html'>Cart Summary</a>
                                    </li>
                                    <li><a href='../app-pages/page-ecommerce-checkout.html'>Checkout</a>
                                    </li>
                                    <li><a href='../app-pages/page-ecommerce-product-envoice.html'>Envoice</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="sub-menu"><a href="javascript:void(0);">Contact</a>
                                <ul class='sub'>
                                    <li><a href='../app-pages/page-contact-1.html'>Contact 1</a>
                                    </li>
                                    <li><a href='../app-pages/page-contact-2.html'>Contact 2</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a href='../app-pages/page-full-calendar.html'>Full Calendar</a>
                            </li>
                            <li><a href='../app-pages/page-people-directory.html'>Contact Management</a>
                            </li>
                            <li><a href='../app-pages/page-search-results-1.html'>Search Results</a>
                            </li>
                            <li><a href='../app-pages/page-faqs.html'>FAQs</a>
                            </li>
                            <li><a href='../app-pages/page-about-us-1.html'>About Us</a>
                            </li>
                            <li><a href='../app-pages/page-coming-soon.html'>Coming Soon</a>
                            </li>
                            <li><a href='../app-pages/page-pricing-tables.html'>Pricing Tables</a>
                            </li>
                            <li><a href='../app-pages/page-lock-screen.html'>Lock Screen</a>
                            </li>
                            <li><a href='../app-pages/page-media-gallery.html'>Media Gallery</a>
                            </li>
                            <li><a href='../app-pages/page-privacy-policy.html'>Privacy Policy</a>
                            </li>
                            <li><a href='../app-pages/page-terms-of-condition.html'>Terms of Condition</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- sidebar menu end-->
        </div>
    </aside>
    <!--sidebar end-->

    <!-- /menu footer buttons -->

    <!--<div class="sidebar-footer hidden-small">
        <a class="tooltip-settings" title="Settings">
            <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
        </a>
        <a class="tooltip-fullscreen" title="Full Screen">
            <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
        </a>
        <a class="tooltip-resize-fullscreen" title="Resize Screen" style='display:none'>
            <span class="glyphicon glyphicon-resize-full" aria-hidden="true"></span>
        </a>
        <a class="tooltip-lock" title="Lock">
            <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
        </a>
        <a class="tooltip-logout" title="Logout">
            <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
        </a>
    </div>-->    <!-- /menu footer buttons -->

    <!--main content start-->
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
                    <h2>Thema Table</h2>
                    <small>Thema basic data table.</small>
                </div>
                <div class="page-breadcrumb">
                    <nav class="c_breadcrumbs">
                        <ul>
                            <li><a href="#">Thema</a></li>
                            <li><a href="#">Data Table</a></li>
                            <li class="active"><a href="#">Basic Table</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="right-menu pull-right">

                </div>

                <div class="pull-right toggle-right-sidebar">
                    <span class="fa fa-outdent fa-2x title-open-right-sidebar"></span>
                </div>

            </div>
            <!--======== Page Title and Breadcrumbs End ========-->

            <!--======== Table Content Start ========-->
            <div class="row">

                <div class="col-md-12">

                    <div class="c_panel">

                        <div class="c_title">
                            <h2>General Table</h2>
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
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                        <i class="fa fa-wrench"></i>
                                    </a>
                                    <ul class="dropdown-menu bullet pull-right animated pulse" role="menu">
                                        <li class="hvr-bounce-to-right-global-parent">
                                            <a href="#">Settings 1</a>
                                        </li>
                                        <li class="hvr-bounce-to-right-global-parent">
                                            <a href="#">Settings 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="close-link">
                                        <i class="fa fa-times"></i>
                                    </a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div><!--/.c_title-->

                        <div class="c_content">

                            <table class="table  table-hover general-table">
                                <thead>
                                <tr>
                                    <th> Company</th>
                                    <th class="hidden-phone">Descrition</th>
                                    <th>Profit</th>
                                    <th>Status</th>
                                    <th>Progress</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><a href="#">Graphics</a></td>
                                    <td class="hidden-phone">Lorem Ipsum dorolo imit</td>
                                    <td>1320.00$ </td>
                                    <td><span class="label label-info label-mini">Due</span></td>
                                    <td>
                                        <div class="progress progress-striped progress-xs">
                                            <div style="width: 40%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-success">
                                                <span class="sr-only">40% Complete (success)</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#">
                                            ABC
                                        </a>
                                    </td>
                                    <td class="hidden-phone">Lorem Ipsum dorolo</td>
                                    <td>556.00$ </td>
                                    <td><span class="label label-warning label-mini">Due</span></td>
                                    <td>
                                        <div class="progress progress-striped progress-xs">
                                            <div style="width: 70%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-danger">
                                                <span class="sr-only">70% Complete (success)</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#">
                                            XYZ
                                        </a>
                                    </td>
                                    <td class="hidden-phone">Lorem Ipsum dorolo</td>
                                    <td>13240.00$ </td>
                                    <td><span class="label label-success label-mini">Paid</span></td>
                                    <td>
                                        <div class="progress progress-striped progress-xs">
                                            <div style="width: 55%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-warning">
                                                <span class="sr-only">55% Complete (success)</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#">
                                            ABC
                                        </a>
                                    </td>
                                    <td class="hidden-phone">Lorem Ipsum dorolo</td>
                                    <td>3455.50$ </td>
                                    <td><span class="label label-danger label-mini">Paid</span></td>
                                    <td>
                                        <div class="progress progress-striped progress-xs">
                                            <div style="width: 90%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-info">
                                                <span class="sr-only">90% Complete (success)</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="#">AVC Ltd</a></td>
                                    <td class="hidden-phone">Lorem Ipsum dorolo imit</td>
                                    <td>110.00$ </td>
                                    <td><span class="label label-primary label-mini">Due</span></td>
                                    <td>
                                        <div class="progress progress-striped progress-xs">
                                            <div style="width: 60%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-success">
                                                <span class="sr-only">60% Complete (success)</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#">
                                            ABC
                                        </a>
                                    </td>
                                    <td class="hidden-phone">Lorem Ipsum dorolo</td>
                                    <td>456.00$ </td>
                                    <td><span class="label label-warning label-mini">Due</span></td>
                                    <td>
                                        <div class="progress progress-striped progress-xs">
                                            <div style="width: 40%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-danger">
                                                <span class="sr-only">40% Complete (success)</span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>

                                </tbody>
                            </table>


                        </div><!--/.c_content-->

                    </div><!--/.c_panels-->


                </div><!--/col-md-12-->

            </div><!--/row-->

            <div class="row">

                <div class="col-md-6">

                    <div class="c_panel">

                        <div class="c_title">
                            <h2>Basic Table</h2>
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
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                        <i class="fa fa-wrench"></i>
                                    </a>
                                    <ul class="dropdown-menu bullet pull-right animated pulse" role="menu">
                                        <li class="hvr-bounce-to-right-global-parent">
                                            <a href="#">Settings 1</a>
                                        </li>
                                        <li class="hvr-bounce-to-right-global-parent">
                                            <a href="#">Settings 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="close-link">
                                        <i class="fa fa-times"></i>
                                    </a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div><!--/.c_title-->

                        <div class="c_content">

                            <table class="table">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Username</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>John</td>
                                    <td>Cruz</td>
                                    <td>@jhon</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Peter</td>
                                    <td>Thumpson</td>
                                    <td>@peter</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Larry</td>
                                    <td>Page</td>
                                    <td>@larry</td>
                                </tr>
                                </tbody>
                            </table>


                        </div><!--/.c_content-->

                    </div><!--/.c_panels-->


                </div><!--/col-md-6-->

                <div class="col-md-6">

                    <div class="c_panel">

                        <div class="c_title">
                            <h2>Striped Table</h2>
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
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                        <i class="fa fa-wrench"></i>
                                    </a>
                                    <ul class="dropdown-menu bullet pull-right animated pulse" role="menu">
                                        <li class="hvr-bounce-to-right-global-parent">
                                            <a href="#">Settings 1</a>
                                        </li>
                                        <li class="hvr-bounce-to-right-global-parent">
                                            <a href="#">Settings 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="close-link">
                                        <i class="fa fa-times"></i>
                                    </a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div><!--/.c_title-->

                        <div class="c_content">

                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Username</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Mark</td>
                                    <td>Otto</td>
                                    <td>@mdo</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Jacob</td>
                                    <td>Thornton</td>
                                    <td>@fat</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Larry</td>
                                    <td>the Bird</td>
                                    <td>@twitter</td>
                                </tr>
                                </tbody>
                            </table>


                        </div><!--/.c_content-->

                    </div><!--/.c_panels-->


                </div><!--/col-md-6-->

            </div><!--/row-->


            <div class="row">

                <div class="col-md-6">

                    <div class="c_panel">

                        <div class="c_title">
                            <h2>Border Table</h2>
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
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                        <i class="fa fa-wrench"></i>
                                    </a>
                                    <ul class="dropdown-menu bullet pull-right animated pulse" role="menu">
                                        <li class="hvr-bounce-to-right-global-parent">
                                            <a href="#">Settings 1</a>
                                        </li>
                                        <li class="hvr-bounce-to-right-global-parent">
                                            <a href="#">Settings 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="close-link">
                                        <i class="fa fa-times"></i>
                                    </a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div><!--/.c_title-->

                        <div class="c_content">

                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Username</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td rowspan="2">1</td>
                                    <td>Mark</td>
                                    <td>Otto</td>
                                    <td>@mdo</td>
                                </tr>
                                <tr>
                                    <td>Mark</td>
                                    <td>Otto</td>
                                    <td>@TwBootstrap</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Jacob</td>
                                    <td>Thornton</td>
                                    <td>@fat</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td colspan="2">Larry the Bird</td>
                                    <td>@twitter</td>
                                </tr>
                                </tbody>
                            </table>


                        </div><!--/.c_content-->

                    </div><!--/.c_panels-->


                </div><!--/col-md-6-->

                <div class="col-md-6">

                    <div class="c_panel">

                        <div class="c_title">
                            <h2>Hover Table</h2>
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
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                        <i class="fa fa-wrench"></i>
                                    </a>
                                    <ul class="dropdown-menu bullet pull-right animated pulse" role="menu">
                                        <li class="hvr-bounce-to-right-global-parent">
                                            <a href="#">Settings 1</a>
                                        </li>
                                        <li class="hvr-bounce-to-right-global-parent">
                                            <a href="#">Settings 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="close-link">
                                        <i class="fa fa-times"></i>
                                    </a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div><!--/.c_title-->

                        <div class="c_content">

                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Username</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Mark</td>
                                    <td>Otto</td>
                                    <td>@mdo</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Jacob</td>
                                    <td>Thornton</td>
                                    <td>@fat</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Larry</td>
                                    <td>the Bird</td>
                                    <td>@twitter</td>
                                </tr>
                                </tbody>
                            </table>


                        </div><!--/.c_content-->

                    </div><!--/.c_panels-->


                </div><!--/col-md-6-->

            </div><!--/row-->
            <!--======== Table Content End ========-->


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
                                            <img src="${app}/images/profile.jpg" width="80" alt="image"/>
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
<!-- <script src="${app}/js/jquery.js"></script>
<script src="${app}/js/jquery-migrate-1.2.1.min.js"></script>
<script src="${app}/vendors/jquery.cookie/jquery.cookie.js"></script>
<script src="${app}/vendors/jquery-ui/jquery-ui.min.js"></script>
<script src="${app}/vendors/jquery-easing/jquery.easing.1.3.js"></script>
<script src="${app}/vendors/bootstrap/js/bootstrap.js"></script>
<script src="${app}/vendors/jquery/dcjqaccordion.2.7.js"></script>
<script src="${app}/vendors/jquery/scrollTo.min.js"></script>
<script src="${app}/vendors/jquery/slimscroll.js"></script>
<script src="${app}/vendors/jquery/nicescroll.js"></script>
<script src="${app}/vendors/progressbar/bootstrap-progressbar.min.js"></script>
<script src="${app}/vendors/counter/waypoints.min.js" type="text/javascript" ></script>
<script src="${app}/vendors/counter/jquery.counterup.min.js" type="text/javascript" ></script>
<script src="${app}/vendors/jquery-icheck/icheck.min.js"></script>
<script src="${app}/vendors/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="${app}/vendors/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
<script src="${app}/vendors/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<script src="${app}/vendors/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>
<script src="${app}/vendors/summernote/summernote.min.js"></script>
<script src="${app}/vendors/jquery.autosize/jquery.autosize.js"></script>
<script src="${app}/vendors/jquery.multi-select/js/jquery.multi-select.js"></script>
<script src="${app}/vendors/jquery.multi-select/js/jquery.quicksearch.js"></script>
<script src="${app}/vendors/typeahead/js/typeahead.bundle.js"></script>
<script src="${app}/vendors/typeahead/js/handlebars.min.js"></script>
<script src="${app}/vendors/perfect-scrollbar/js/perfect-scrollbar.min.js"></script>
<script src="${app}/vendors/select2/select2.min.js"></script>
<script src="${app}/vendors/bootstrap-star-rating/js/star-rating.min.js"></script>
<script src="${app}/vendors/bootstrap-fileupload/js/bootstrap-fileupload.js"></script>
<script src="${app}/vendors/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
<script src="${app}/vendors/jquery.validate/jquery.validate.min.js"></script>
<script src="${app}/vendors/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
<script src="${app}/vendors/dropzone/dropzone.min.js"></script>
<script src="${app}/vendors/plupload/js/plupload.full.min.js"></script>
<script src="${app}/vendors/plupload/js/jquery.plupload.queue/jquery.plupload.queue.min.js"></script>
<script src="${app}/vendors/x-editable/bootstrap3-editable/js/bootstrap-editable.js"></script>
<script src="${app}/vendors/x-editable/inputs-ext/address/address.js"></script>
<script src="${app}/vendors/x-editable/inputs-ext/typeaheadjs/typeaheadjs.js"></script>
<script src="${app}/vendors/owl-carousel/owl.carousel.js"></script>
<script src="${app}/vendors/magnific-popup/js/jquery.magnific-popup.js"></script>
<script src="${app}/vendors/masonry/masonry.pkgd.min.js"></script>
<script src="${app}/vendors/moment.min.js"></script>
<script src="${app}/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
<script src="${app}/vendors/raphael-min.js" charset="utf-8" ></script>
<script src="${app}/vendors/sweetalert/sweetalert.min.js"></script>
<script src="${app}/vendors/word-rotator/jquery.wordrotator.min.js"></script>
<script src="${app}/vendors/wow-animations/js/wow.min.js"></script>
<script src="${app}/vendors/rwd-table/js/rwd-table.min.js?v=5.0.3"></script>
<script src="${app}/vendors/jqueryui.sortable.animation/jquery.ui.sortable-animation.js"></script>
<script src="${app}/vendors/tooltipster/js/jquery.tooltipster.js" type="text/javascript" ></script>
<script src="${app}/vendors/dropdowns-enhancement/js/dropdowns-enhancement.min.js" type="text/javascript"></script>
<script src="${app}/vendors/jquery-notific8/jquery.notific8.js" type="text/javascript"></script>
<script src="${app}/vendors/date.js"></script>
<script src="${app}/vendors/pogo-slider/js/jquery.pogo-slider.min.js" type="text/javascript" ></script>
<script src="${app}/vendors/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript" ></script>
<script src="../../../vendors/nestable/jquery.nestable.js" type="text/javascript" ></script>
<script src="${app}/vendors/bstooltip/bstooltip.js"></script> -->

<!--##################################################################################
#
# COMMON SCRIPT FOR THIS PAGE
#
##################################################################################-->

<!--common script init for all pages-->
<script src="${app}/js/theme.js" type="text/javascript" ></script>

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
