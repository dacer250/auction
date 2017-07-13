<%--
  Created by IntelliJ IDEA.
  User: mabo
  Date: 2017/7/13
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.css"/>
    <link rel="stylesheet" href="/template/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="/template/css/green.css"/>

    <link rel="stylesheet" href="/template/css/custom.min.css"/>

    <sitemesh:write property='head'/>
</head>


<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>万隆和</span></a>
                </div>

                <div class="clearfix"></div>

                <br />

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <ul class="nav side-menu">
                            <li>
                                <a><i class="fa fa-home"></i> 分类管理
                                    <!--<span class="fa fa-chevron-down"></span>--></a>
                                <!--<ul class="nav child_menu">
              <li><a href="index.html">Dashboard</a></li>
              <li><a href="index2.html">Dashboard2</a></li>
              <li><a href="index3.html">Dashboard3</a></li>
            </ul>-->
                            </li>
                            <li>
                                <a><i class="fa fa-home"></i> 展品管理
                                    <!--<span class="fa fa-chevron-down"></span>--></a>
                            </li>
                        </ul>
                    </div>

                </div>
                <!-- /sidebar menu -->

            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <nav>
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="">
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                王老五
                                <span class=" fa fa-angle-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu pull-right">
                                <li>
                                    <a href="javascript:;">修改密码</a>
                                </li>
                                <li>
                                    <a href="login.html"><i class="fa fa-sign-out pull-right"></i>退出</a>
                                </li>
                            </ul>
                        </li>

                    </ul>
                </nav>
            </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <sitemesh:write property='body'>Body goes here. Blah blah blah.</sitemesh:write>
    </div>
    <!-- /page content -->

    <!-- footer content -->
    <footer>
        <div class="pull-right">
            Gentelella - Bootstrap Admin Template by
            <a href="https://colorlib.com">Colorlib</a>
        </div>
        <div class="clearfix"></div>
    </footer>
    <!-- /footer content -->
</div>

<script language="JavaScript" src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>

<!-- Bootstrap -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<!-- bootstrap-progressbar -->
<script src="/template/js/bootstrap-progressbar.min.js"></script>

<!-- iCheck -->
<script src="/template/js/icheck.min.js"></script>

<script src="/template/js/switchery.min.js"></script>

<!-- Custom Theme Scripts -->
<script src="/template/js/custom.min.js"></script>

<sitemesh:write property='myfooter'></sitemesh:write>
</body>




</html>