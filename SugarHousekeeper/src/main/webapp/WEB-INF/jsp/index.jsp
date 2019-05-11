<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>SWS智能油库</title>
<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<c:set var="cxt" value="${pageContext.request.contextPath}"></c:set>
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="${cxt }/public/AdminLTE-2.3.11/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="${cxt }/public/font-awesome-4.7.0/css/font-awesome.min.css">
<!-- Ionicons -->
<!-- <link rel="stylesheet" href="${cxt }/public/AdminLTE-2.3.11/lib/sit/sit.css"> -->
<!-- Theme style -->
<link rel="stylesheet" href="${cxt }/public/AdminLTE-2.3.11/dist/css/AdminLTE.min.css">
<link rel="stylesheet" href="${cxt }/public/AdminLTE-2.3.11/dist/css/skins/skin-blue.min.css">

<link rel="stylesheet" href="${cxt }/public/AdminLTE-2.3.11/lib/starter/style.css">
<link rel="stylesheet" href="${cxt }/uploads/selfCss/index.css">
<script type="text/javascript" src="${cxt }/public/jquery-2.1.4.js" ></script>

</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

<!-- Main Header -->
<header class="main-header">

  <!-- Logo -->
  <a href="javascript:;" class="logo">
    <!-- mini logo for sidebar mini 50x50 pixels -->
    <span class="logo-mini"><img src="${cxt }/images/logo.png"></span>
    <!-- logo for regular state and mobile devices -->
    <span class="logo-lg"><img src="${cxt }/images/logoT.png"></span>
  </a>

  <!-- Header Navbar -->
  <nav class="navbar navbar-static-top" role="navigation">
    <!-- Sidebar toggle button-->
    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
      <span class="sr-only">Toggle navigation</span>
    </a>
    <div id="wrapper">
      <div class="tab-container">
        <div class="content-tabs"> 
            <nav class="page-tabs J_menuTabs">
              <div class="page-tabs-content" style="margin-left: 0px;">
                <a href="javascript:;" class="J_menuTab lock active" data-id="${cxt }/views/home.html">首页</a> 
              </div>
            </nav>  
        </div>
      </div>
    </div>
    <!-- Navbar Right Menu -->
    <div class="navbar-custom-menu">
      <ul class="nav navbar-nav">
        <!-- Messages: style can be found in dropdown.less--> 
        <!-- User Account Menu -->
        <li class="dropdown user user-menu">
          <!-- Menu Toggle Button -->
          <a href="#" data-toggle="control-sidebar"><i class="fa fa-question-circle"></i>帮助</a>
        </li>
        <!-- Control Sidebar Toggle Button -->
        <li>
          <a href="#" data-toggle="control-sidebar"><i class="fa fa-envelope-open-o"></i>消息</a>
        </li>
        <li>
          <a href="#" data-toggle="control-sidebar"><i class="fa fa-power-off"></i>注销</a>
        </li>
      </ul>
    </div>
  </nav>
</header>
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
  <section class="sidebar">  
    <ul class="sidebar-menu">
      <li class="header" id="fffff">欢迎您 | 张可为</li> 
      
      <li class="treeview">
        <a href=""><i class="fa fa-pencil" aria-hidden="true"></i> <span>信息管理</span>
        <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
          </a>
          <ul class="treeview-menu">
     
          <li id="menu_02" onclick="doMenuClick(this);"  fun-href="/SugarHousekeeper/wharf/showalls" fun-target="" fun-label="码头泊位信息管理">
          	<a data-href="/SugarHousekeeper/wharf/showall" rel="码头泊位信息管理">码头泊位管理</a>
          </li>
          
        </ul>
      </li>
      <li class="treeview" onclick="doMenuGroupClick();">
        <a href="">
        <i class="glyphicon glyphicon-home"></i> <span>计划岗</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li id="menu_01" onclick="doMenuClick(this);" fun-href="${cxt }/views/operation.html" fun-target="" fun-label="作业计划">
            <a data-href="${cxt }/views/operation.html" rel="作业计划">作业计划</a>
          </li>
          
         <li id="menu_02" onclick="doMenuClick(this);" fun-href="${cxt }/views/jobschedul.html" fun-target="" fun-label="作业调度总览"><a fun-href="./views/jobschedul.html" data-href="./views/jobschedul.html" rel="作业调度总览">作业调度总览</a></li>

          <li id="menu_02" onclick="doMenuClick(this);" fun-href="${cxt }/views/monitor.html" fun-target="" fun-label="资源监控">
            <a fun-href="${cxt }/views/monitor.html" data-href="${cxt }/views/monitor.html" rel="资源监控">资源监控</a>
          </li>
<!-- 
          <li id="menu_02" onclick="doMenuClick(this);" fun-href="./views/storage.html" fun-target="" fun-label="储罐计量操作票">
            <a fun-href="./views/storage.html" data-href="./views/storage.html" rel="储罐计量操作票">储罐计量操作票</a>
          </li> -->


          
        </ul>
      </li>

      <li class="treeview">
        <a href=""><i class="fa fa-pencil" aria-hidden="true"></i> <span>调度岗位</span>
        <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
          </a>
          <ul class="treeview-menu">
     
          <li id="menu_02" onclick="doMenuClick(this);" fun-href="${cxt }/views/jobschedul.html" fun-target="" fun-label="作业调度总览"><a fun-href="${cxt }/views/jobschedul.html" data-href="./views/jobschedul.html" rel="作业调度总览">作业调度总览</a></li>
          
        </ul>
      </li>

      <li class="treeview">
        <a href=""><i class="fa fa-user-circle"></i> <span>外操</span>
        <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li id="menu_01" onclick="doMenuClick(this);" fun-href="${cxt }/views/private-yc.html" fun-target="" fun-label="作业计划">
            <a data-href="./views/private-yc.html" rel="作业计划">外操操作票</a>
          </li>
          
        

<!-- 
          <li id="menu_02" onclick="doMenuClick(this);" fun-href="./views/storage.html" fun-target="" fun-label="储罐计量操作票">
            <a fun-href="./views/storage.html" data-href="./views/storage.html" rel="储罐计量操作票">储罐计量操作票</a>
          </li> -->


          
        </ul>
      </li>

      <li class="treeview">
        <a href="#"><i class="fa fa-credit-card"></i> <span>计量</span>
        <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
           <li id="menu_02" onclick="doMenuClick(this);" fun-href="${cxt }/views/private-jl.html" fun-target="" fun-label="作业调度总览"><a fun-href="${cxt }/views/private-jl.html" data-href="./views/private-jl.html" rel="作业调度总览">计量操作票</a></li>
<!-- 
          <li id="menu_02" onclick="doMenuClick(this);" fun-href="./views/storage.html" fun-target="" fun-label="储罐计量操作票">
            <a fun-href="./views/storage.html" data-href="./views/storage.html" rel="储罐计量操作票">储罐计量操作票</a>
          </li> -->


          
        </ul>
      </li>
    </ul>
    <!-- /.sidebar-menu -->
  </section>
  <!-- /.sidebar -->
</aside> 
<!-- Main content -->
<section class="content-wrapper">
  <div id="main-container">
    <div id='fun-loading' class="hide">
      <div class='fun-loading'></div>
      <!--[if lt IE 9]><img src="../../static/img/sys/loading.gif"/><![endif]-->
    </div>
    <iframe class="J_iframe" id="iframe0"  name="iframe0" style="width:100%;" src="wharflist" frameborder="" data-id="${cxt }/views/home.html" seamless></iframe>
  </div><!-- /main-container -->
</section>
<!-- /.content -->
</div>

<!-- Control Sidebar -->



<!-- /.control-sidebar -->
<!-- Add the sidebar's background. This div must be placed
     immediately after the control sidebar -->
<div class="control-sidebar-bg"></div>
</div>
<!-- jQuery 2.2.3 -->
<script src="${cxt }/public/AdminLTE-2.3.11/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="${cxt }/public/AdminLTE-2.3.11/bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="${cxt }/public/AdminLTE-2.3.11/dist/js/app.min.js"></script>
<script type="text/javascript" src="${cxt }/uploads/selfJs/tab.js"></script>
</body>
</html>
