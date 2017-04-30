<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <title>试卷批改</title>
    <jsp:include page="../common/topbase.jsp"></jsp:include>
    
</head>
<body class="no-skin">
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
                <li class="">
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
                <li class="active">
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
                    <li class="active">试卷批改</li>
                    <li class="active">批阅</li>
                </ul>
            </div>
            <div class="page-content">
                <div class="test_paper" style="width:100%;padding: 10px 20px">
                    <div class="test_paperT">期末考试</div>
                    <div class="topicT">一、选择题（每题 2 分，共20分）</div>
                    <div class="topic">
                        <p class="topicC">1、用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时(   ).
                            <label class="pull-right inline">
                                <small class="muted smaller-90" style="font-weight: bolder;color:red">本题正误:</small>
                                <input  checked="checked" type="checkbox" class="ace ace-switch ace-switch-6">
                                <span class="lbl middle"></span>
                            </label>
                        </p>
                        <input type="radio" name="one" class="options">A.链接方式存储<br>
                        <input type="radio" name="one" class="options">B.链接方式存储<br>
                        <input type="radio" name="one" class="options">C.链接方式存储<br>
                        <input type="radio" name="one" class="options">D.链接方式存储

                    </div>
                    <div class="topic">
                        <p class="topicC">2、用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时(   ).
                            <label class="pull-right inline">
                                <small class="muted smaller-90" style="font-weight: bolder;color:red">本题正误:</small>
                                <input checked="checked" type="checkbox" class="ace ace-switch ace-switch-6">
                                <span class="lbl middle"></span>
                            </label>
                        </p>
                        <input type="radio" name="two" class="options">A.链接方式存储<br>
                        <input type="radio" name="two" class="options">B.链接方式存储<br>
                        <input type="radio" name="two" class="options">C.链接方式存储<br>
                        <input type="radio" name="two" class="options">D.链接方式存储
                    </div>


                    <div class="topicT">二、判断题（每题 2 分，共20分）</div>
                    <div class="topic">
                        <p class="topicC">1、用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时(   ).
                            <label class="pull-right inline">
                                <small class="muted smaller-90" style="font-weight: bolder;color:red">本题正误:</small>
                                <input  checked="checked" type="checkbox" class="ace ace-switch ace-switch-6">
                                <span class="lbl middle"></span>
                            </label></p>
                        <input type="radio" name="correct" class="options">对 &nbsp;
                        <input type="radio" name="correct" class="options">错
                    </div>

                    <div class="topicT">三、填空题（每空 2 分，共20分）</div>
                    <div class="topic">
                        <p class="topicC">1、用链接方式存储的队列，在进行插入运算时用链接方式存储的队<span class="text"><input type="text"/></span>列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的<span class="text"><input type="text"/></span>队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时.</p>
                        <label class="inline">
                            <small class="muted smaller-90" style="font-weight: bolder;color:red">第一空正误:</small>
                            <input checked="checked" type="checkbox" class="ace ace-switch ace-switch-6">
                            <span class="lbl middle"></span>
                        </label>&nbsp;
                        <label class="inline">
                            <small class="muted smaller-90" style="font-weight: bolder;color:red">第二空正误:</small>
                            <input checked="checked" type="checkbox" class="ace ace-switch ace-switch-6">
                            <span class="lbl middle"></span>
                        </label>
                    </div>

                    <div class="topicT">四、简答题（每题 15 分，共30分）</div>
                    <div class="topic">
                        <p class="topicC">1、用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时用链接方式存储的队列，在进行插入运算时？</p>
                        <textarea rows="10" cols="100"></textarea><br/>
                        <label class="inline">
                            <small class="muted smaller-90" style="font-weight: bolder;color:red">本题得分:</small>
                            <input type="number" max="15" style="width: 200px;" placeholder="请在此输入本题的得分...">
                        </label>
                    </div>

                    <div class="topicT">五、算法设计题（每题 20 分，共20分）</div>
                    <div class="topic">
                        <p class="topicC">1、设二叉树bt采用二叉链表结构存储。试设计一个算法输出二叉树中所有非叶子结点，并求出非叶子结点的个数。</p>
                        <textarea rows="10" cols="100"></textarea>
                        <br>
                        <label class="inline" style="margin-top: 10px">
                            <small class="muted smaller-90" style="font-weight: bolder;color:red">本题得分:</small>
                            <input type="number" max="15" style="width: 200px;" placeholder="请在此输入本题的得分...">
                        </label>
                    </div>
                    <div class="test_paperBtn">
                        <div class="paperBtn"><a href="pigai.jsp" style="text-decoration: none;color: white">确认本次批改</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>