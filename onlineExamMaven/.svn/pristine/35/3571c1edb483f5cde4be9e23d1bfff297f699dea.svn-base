<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	isELIgnored="false"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <title>手工组卷</title>
    <!-- js  css 引入 -->
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
                        <!--<i class="ace-icon fa fa-caret-down"></i>-->
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
                <li class="active">
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
                    <li class="active">手工组卷</li>
                </ul>
            </div>

            <!--新建按钮-->
            <div class="page-content" id="btn">
                <h2>进入手工组卷之前首先需要新建一个试卷</h2>
                <input type="button" value="新建试卷" id="new_btn">
            </div>
            <!--新建试卷-->
            <div class="page-content" id="text" style="display: none;">
<!--                 <form action="${pageContext.request.contextPath}/TestPaper/InsertTestpaperWithHand" > -->
                <form>
                    试卷名称：<input type="text" class="txt" id="pagerName" style="width: 240px;" placeholder="请在此输入本次试卷的名称...">
                    <br><br>
                    试卷编号：<input type="text" id="paperId">
                    <br><br>
                    难度：<select id="paperDifficulty">
                    <option value="jd">简单</option>
                    <option value="yb">一般</option>
                    <option value="kn" selected>困难</option>
                </select>
                    <br><br>
                    考试类型：<label><input name="TestType" type="radio" value="zhangjie" id="Zhang">章节测试 </label>
                                <span style="display: none" id="XuanZhang">
                                    第
                                    <select style="height: 25px;">
                                        <option>一</option>
                                        <option>二</option>
                                        <option>三</option>
                                        <option>四</option>
                                        <option>五</option>
                                        <option>六</option>
                                    </select>
                                    章
                                </span>&nbsp;
                    <label><input name="TestType" class="qi" type="radio" value="qizhong">期中考试 </label>&nbsp;
                    <label><input name="TestType" class="qi" type="radio" value="qimo" checked>期末考试 </label>&nbsp;
                    <br><br>
                    组卷类型：<label><input name="TestZujuan" class="qi" type="radio" value="shougong" checked>手工组卷 </label>&nbsp;
                    <!--<label><input name="zj" class="qi" type="radio" value="" checked>手工组卷 </label>-->
                    <br><br><br>
                    <a onclick="InsertTestpaperWithHand();"><input type="button" value="确定" id="new_text"></a>
                </form>
            </div>
            <!--手工组卷-->
            <div class="page-content" id="type" style="display: none;">
                <div class="page-content" style="margin: 0;padding: 0">
                    <div class="shou_head" style="margin-bottom: 10px;">
                        <ul style="list-style: none">
                            <li>需添加 <span>选择题</span> 10道（各1分，共10分）</li>
                            <li>需添加 <span>判断题</span> 10道（各1分，共10分）</li>
                            <li>需添加 <span>填空题</span> 10道（各2分，共20分）</li>
                            <li>需添加 <span>简答题</span> 5道（各6分，共30分）</li>
                            <li>需添加 <span>算法设计题</span> 3道（各10分，共30分）</li>
                            <li>共计100分</li>
                        </ul>
                </div>
                    <div class="shou_head">
                        <ul style="list-style: none">
                            <li>已添加 <span class="pointer" style="background-color: #2a91d8;">
                            <a href="${pageContext.request.contextPath}/question/findByChoicePage">
                            选择题</a>
                            </span> 0道</li>
                            <li>已添加 <span class="pointer" style="background-color: #808080;">
                            <a href="${pageContext.request.contextPath}/question/findByChoicePage">
                            判断题</a>
                            </span> 0道</li>
                            <li>已添加 <span class="pointer" style="background-color: #808080;">
                            <a href="${pageContext.request.contextPath}/question/findByChoicePage">
                            填空题</a>
                            </span> 0道</li>
                            <li>已添加 <span class="pointer" style="background-color: #808080;">
                            <a href="${pageContext.request.contextPath}/question/findByChoicePage">
                            简答题</a>
                            </span> 0道</li>
                            <li>已添加 <span class="pointer" style="background-color: #808080;">
                            <a href="${pageContext.request.contextPath}/question/findByChoicePage">
                            算法设计题</a>
                            </span> 0道
                                <a href="shou_text.jsp"><input type="button" class="pull-right button_sheng" style="margin-top: -30px;margin-right: 20px" value="生成试卷"></a>
                            </li>
                        </ul>
                    </div>
                    <div>${paperId}</div>
			<div class="content" style="display: block" id="shouzuDiv">  
	<!--  开始-->
 
  <!--  结束-->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

<script>
    $(function(){
        var lis =$(".shou_head ul li .pointer");
        var content=$(".content");
       
        for(var i=0;i<lis.length;i++) {
            lis[i].index = i;
            lis[i].onclick = function () {
                for (var j = 0; j < content.length; j++) {
                    content[j].style.display = "none";
                    lis[j].style.backgroundColor = "#808080";
                }
//                console.log(content[this.index]);
//alert(content[this.index]);
				
                content[0].style.display = "block";
                this.style.backgroundColor = "#2a91d8";
            }
        }
    });

    $("#Zhang").click(function(){
        $("#XuanZhang").css("display","");
    });
    $(".qi").click(function(){
        $("#XuanZhang").css("display","none");
    });

    //    点击事件
    $("#new_btn").click(function(){
        $("#btn").hide();
        $("#text").show();
    });
    $("#new_text").click(function () {
       $("#text").hide();
        $("#type").show();
    });
    //显示手工组卷的页面
</script>

<script type="text/javascript">
var pagerName;
var paperId = $("#paperId").val();
var paperDifficulty;
var TestType;
var pageSizeTemp=5;
var startPageTemp=1;
var sessionId="<%=session.getAttribute("paperId")%>"; 
//alert(sessionId);

/* 保存题号到数据库 */
function addQuestionIntoTestpaper(questionId){
	
	  $.post("${pageContext.request.contextPath}/TestPaper/insertQuestionIntoTestPaper",{questionId:questionId},
			  function(data){
		 alert(data);
	  });
}

/* 新建手动组卷 */
function InsertTestpaperWithHand(){
			alert("提交中。。。");
	$.post("${pageContext.request.contextPath}/TestPaper/InsertTestpaperWithHand",
		{pagerName:$("#pagerName").val(),paperId:$("#paperId").val(),paperDifficulty:$("#paperDifficulty").val(),TestType:$("#zhang").val()},
			function(data){
			alert(data.paperId);
			
	},"json");
}
</script>

</html>