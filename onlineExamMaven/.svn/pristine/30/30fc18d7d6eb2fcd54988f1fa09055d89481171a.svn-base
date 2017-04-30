<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <title>自动组成试卷</title>
 <jsp:include page="../common/topbase.jsp"></jsp:include>

</head>
<body class="no-skin">
<!--头部-->
<div id="navbar" class="navbar navbar-default">
    <div id="navbar-container" class="navbar-container">
        <button id="menu-toggler" class="navbar-toggle menu-toggler pull-left" type="button" data-target="#sidebar">
            <span class="sr-only">Toggle sidebar</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <div class="navbar-header pull-left">
            <a class="navbar-brand" href="#">
                <small>
                    <!--<i class="fa fa-leaf"></i>-->
                    <img src="${pageContext.request.contextPath}/images/tb/kaoshi.png" style="width: 25px;height: 25px;">
                    数据结构在线考试系统<span style="font-size: 12px">——教师端</span>
                </small>
            </a>
        </div>
        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="light-blue">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <img class="nav-user-photo" src="${pageContext.request.contextPath}/assets/avatars/avatar2.png" alt="Jack's photo">
                            <span class="user-info">
                                <small>Welcome,</small>
                                王老师
                            </span>
                    </a>
                </li>
                <li class="light-blue">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        退出
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--主体内容-->
<div class="main-container" id="main-container">
    <!--左侧导航-->
    <div id="sidebar" class="sidebar responsive">
        <script type="text/javascript">
            try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
        </script>
        <div class="sidebar-shortcuts" id="sidebar-shortcuts">
            <!--左侧分类导航栏-->
            <ul class="nav nav-list">
                <!--题库管理-->
                <li class="">
                    <a href="#" class="dropdown-toggle">
                        <!--<i class="menu-icon fa fa-desktop"></i>-->
                        <img src="${pageContext.request.contextPath}/images/tb/tiku.png" style="width: 20px;height: 20px;">&nbsp;
                            <span class="menu-text">
                                题库管理
                            </span>
                        <b class="arrow fa fa-angle-down"></b>
                    </a>
                    <ul class="submenu">
                        <li class="">
                            <a href="tiku_xuanze.jsp">
                                <i class="menu-icon fa fa-caret-right"></i>
                                选择题
                            </a>
                            <b class="arrow"></b>
                        </li>
                        <li class="">
                            <a href="tiku_panduan.jsp">
                                <i class="menu-icon fa fa-caret-right"></i>
                                判断题
                            </a>
                            <b class="arrow"></b>
                        </li>
                        <li class="">
                            <a href="tiku_tiankong.jsp">
                                <i class="menu-icon fa fa-caret-right"></i>
                                填空题
                            </a>
                            <b class="arrow"></b>
                        </li>
                        <li class="">
                            <a href="tiku_jianda.jsp">
                                <i class="menu-icon fa fa-caret-right"></i>
                                简答题
                            </a>
                            <b class="arrow"></b>
                        </li>
                        <li class="">
                            <a href="tiku_sheji.jsp">
                                <i class="menu-icon fa fa-caret-right"></i>
                                算法设计题
                            </a>
                            <b class="arrow"></b>
                        </li>
                    </ul>
                </li>
                <!--自动组卷-->
                <li class="active">
                    <a href="zizu.jsp">
                        <!--<i class="menu-icon fa fa-folder"></i>-->
                        <img src="${pageContext.request.contextPath}/images/tb/zidong.png" style="width: 20px;height: 20px;">&nbsp;
                            <span class="menu-text">
                                自动组卷
                            </span>
                        <!--<b class="arrow fa fa-angle-down"></b>-->
                    </a>
                </li>
                <!--手工组卷-->
                <li class="">
                    <a href="shouzu.jsp">
                        <!--<i class="menu-icon fa fa-edit"></i>-->
                        <img src="${pageContext.request.contextPath}/images/tb/shou.png" style="width: 20px;height: 20px;">&nbsp;
                            <span class="menu-text">
                                手工组卷
                            </span>
                        <!--<b class="arrow fa fa-angle-down"></b>-->
                    </a>
                </li>
                <!--试卷管理-->
                <li class="">
                    <a href="shijuanguanli.jsp">
                        <!--<i class="menu-icon fa fa-edit"></i>-->
                        <img src="${pageContext.request.contextPath}/images/tb/shijuan.png" style="width: 20px;height: 20px;">&nbsp;
                            <span class="menu-text">
                                试卷管理
                            </span>
                        <!--<b class="arrow fa fa-angle-down"></b>-->
                    </a>
                </li>
                <!--试卷批改-->
                <li class="">
                    <a href="pigai.jsp">
                        <!--<i class="menu-icon fa fa-edit"></i>-->
                        <img src="${pageContext.request.contextPath}/images/tb/pigai2.png" style="width: 20px; height: 20px;">&nbsp;
                            <span class="menu-text">
                                试卷批改
                            </span>
                        <!--<b class="arrow fa fa-angle-down"></b>-->
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="public.jsp">首页</a>
                    </li>
                    <li class="">自动组卷</li>
                    <li class="active">组成试卷</li>
                </ul>
            </div>
            <div class="page-content">
                <div class="test_paper">
                    <div class="test_paperT">期末考试</div>
                    <div id="">
                    <!-- 插入试卷的开始 -->
                    
                    <!-- end -->
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>