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
<div class="main-container">
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
    <div class="main-content" id="main-content">
        <div class="main-content-inner" id="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="public.jsp">首页</a>
                    </li>
                    <li class="active">手工组卷</li>
                </ul>
            </div>
            <div class="page-content">
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
                           <a onclick="findByChoicePage();"> 选择题</a>
                            </span> 0道</li>
                            <li>
                            	已添加 
                            <span class="pointer" style="background-color: #808080;">
                            <a onclick="findByDecidePage();">判断题</a>
                            </span> 0道
                            </li>
                            <li>已添加 <span class="pointer" style="background-color: #808080;">
                           <a onclick="findByBlankPage();">填空题</a> 
                            </span> 0道</li>
                            <li>已添加 <span class="pointer" style="background-color: #808080;">
                            <a onclick="findBySimplePage();">简答题</a></span> 0道</li>
                            <li>已添加 <span class="pointer" style="background-color: #808080;">
                            <a onclick="findByDesignPage();">算法设计题</a></span> 0道
                                <a href="${pageContext.request.contextPath}/showPaper"><input type="button" class="pull-right button_sheng" style="margin-top: -30px;margin-right: 20px" value="生成试卷"></a>
                            </li>
                        </ul>
                    </div>
                    <div id="paperId">${paperId}</div>
                    <div class="content" style="display: block;">
<div id="shouzuDiv" style="display: block;">
				</div>
<div style="text-align: center">
					<ul id="pageLimit" class="pagination pagination-lg"></ul>
					</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

<script type="text/javascript">
/* 加入试题篮 */
function addQuestionIntoTestpaper(questionId){
	
	  $.post("${pageContext.request.contextPath}/TestPaper/insertQuestionIntoTestPaper",{questionId:questionId ,paperId:'${paperId}'},
			  function(data){
		  alert(data);
	  });
}
</script>
<script type="text/javascript">
	/* 分页    查询判断题 */
	var pageSizeTemp = ${pageSize};
	var startPageTemp = 1;
	  var loading="<div id='loading' class='loading'></div>";

	$(document).ready(function() {
		findByChoicePage();
	});

	function findByDecidePage() {
		/* 判断 */
		//copy 复制一份 post ajax 形式
		$.post("${pageContext.request.contextPath}/question/selectByAllDecide",
						{
							startPage : startPageTemp,
							pageSize : pageSizeTemp
						},
						function(data) {

							$("#shouzuDiv").empty().html(data);
							var options = {
								bootstrapMajorVersion : 3, //版本
								currentPage : startPageTemp, //当前页数
								totalPages : ${totalPages}, //总页数
								size : "normal",
								//   numberOfPages:3,
								shouldShowPage : true,
								itemTexts : function(type, page, current) {
									switch (type) {
									case "first":
										return "首页";
									case "prev":
										return "上一页";
									case "next":
										return "下一页";
									case "last":
										return "末页";
									case "page":
										return page;
									}
								},//点击事件，用于通过Ajax来刷新整个list列表
								onPageClicked : function(event, originalEvent,
										type, page) {
									startPageTemp = page;
									$.post("${pageContext.request.contextPath}/question/selectByAllDecide",
													{
														startPage : page,
														pageSize : pageSizeTemp
													}, function(data) {
														$("#shouzuDiv").empty()
																.append(data);
													});
								}
							};
							$('#pageLimit').bootstrapPaginator(options);

						});

	}
	</script>
	<script type="text/javascript">
	function findByBlankPage() {
		/* 填空 */
		//copy 复制一份 post ajax 形式
		$.post("${pageContext.request.contextPath}/question/selectByAllBlank",
						{
							startPage : startPageTemp,
							pageSize : pageSizeTemp
						},
						function(data) {

							$("#shouzuDiv").empty().html(data);
							var options = {
								bootstrapMajorVersion : 3, //版本
								currentPage : startPageTemp, //当前页数
								totalPages : ${totalPages}, //总页数
								size : "normal",
								//   numberOfPages:3,
								shouldShowPage : true,
								itemTexts : function(type, page, current) {
									switch (type) {
									case "first":
										return "首页";
									case "prev":
										return "上一页";
									case "next":
										return "下一页";
									case "last":
										return "末页";
									case "page":
										return page;
									}
								},//点击事件，用于通过Ajax来刷新整个list列表
								onPageClicked : function(event, originalEvent,
										type, page) {
									startPageTemp = page;
									$.post("${pageContext.request.contextPath}/question/selectByAllBlank",
													{
														startPage : page,
														pageSize : pageSizeTemp
													}, function(data) {
														$("#shouzuDiv").empty()
																.append(data);
													});
								}
							};
							$('#pageLimit').bootstrapPaginator(options);

						});

	}
	
	</script>
		<script type="text/javascript">
	function findByChoicePage() {
		/* 选择 */
		$.post("${pageContext.request.contextPath}/question/selectByAllChoice",
						{
							startPage : startPageTemp,
							pageSize : pageSizeTemp
						},
						function(data) {

							$("#shouzuDiv").empty().html(data);
							var options = {
								bootstrapMajorVersion : 3, //版本
								currentPage : startPageTemp, //当前页数
								totalPages : ${totalPages}, //总页数
								size : "normal",
								//   numberOfPages:3,
								shouldShowPage : true,
								itemTexts : function(type, page, current) {
									switch (type) {
									case "first":
										return "首页";
									case "prev":
										return "上一页";
									case "next":
										return "下一页";
									case "last":
										return "末页";
									case "page":
										return page;
									}
								},//点击事件，用于通过Ajax来刷新整个list列表
								onPageClicked : function(event, originalEvent,
										type, page) {
									startPageTemp = page;
									$
											.post(
													"${pageContext.request.contextPath}/question/selectByAllChoice",
													{
														startPage : page,
														pageSize : pageSizeTemp
													}, function(data) {
														$("#shouzuDiv").empty()
																.append(data);
													});
								}
							};
							$('#pageLimit').bootstrapPaginator(options);

						});

	}
	
	</script>
	<script type="text/javascript">
	function findBySimplePage() {
		/* 简答 */
		$.post("${pageContext.request.contextPath}/question/selectByAllSimple",
						{
							startPage : startPageTemp,
							pageSize : pageSizeTemp
						},
						function(data) {

							$("#shouzuDiv").empty().html(data);
							var options = {
								bootstrapMajorVersion : 3, //版本
								currentPage : startPageTemp, //当前页数
								totalPages : ${totalPages}, //总页数
								size : "normal",
								//   numberOfPages:3,
								shouldShowPage : true,
								itemTexts : function(type, page, current) {
									switch (type) {
									case "first":
										return "首页";
									case "prev":
										return "上一页";
									case "next":
										return "下一页";
									case "last":
										return "末页";
									case "page":
										return page;
									}
								},//点击事件，用于通过Ajax来刷新整个list列表
								onPageClicked : function(event, originalEvent,
										type, page) {
									startPageTemp = page;
									$
											.post(
													"${pageContext.request.contextPath}/question/selectByAllSimple",
													{
														startPage : page,
														pageSize : pageSizeTemp
													}, function(data) {
														$("#shouzuDiv").empty()
																.append(data);
													});
								}
							};
							$('#pageLimit').bootstrapPaginator(options);

						});

	}
	
	</script>
		<script type="text/javascript">
	function findByDesignPage() {
		/* 设计 */
		$.post("${pageContext.request.contextPath}/question/selectByAllDesign",
						{
							startPage : startPageTemp,
							pageSize : pageSizeTemp
						},
						function(data) {

							$("#shouzuDiv").empty().html(data);
							var options = {
								bootstrapMajorVersion : 3, //版本
								currentPage : startPageTemp, //当前页数
								totalPages : ${totalPages}, //总页数
								size : "normal",
								//   numberOfPages:3,
								shouldShowPage : true,
								itemTexts : function(type, page, current) {
									switch (type) {
									case "first":
										return "首页";
									case "prev":
										return "上一页";
									case "next":
										return "下一页";
									case "last":
										return "末页";
									case "page":
										return page;
									}
								},//点击事件，用于通过Ajax来刷新整个list列表
								onPageClicked : function(event, originalEvent,
										type, page) {
									startPageTemp = page;
									$
											.post(
													"${pageContext.request.contextPath}/question/selectByAllDesign",
													{
														startPage : page,
														pageSize : pageSizeTemp
													}, function(data) {
														$("#shouzuDiv").empty()
																.append(data);
													});
								}
							};
							$('#pageLimit').bootstrapPaginator(options);

						});

	}
	
	</script>
	<script type="text/javascript">
var sessionId="<%=session.getAttribute("paperId")%>";
var paperId;
	$(document).ready(function(){
// 		queryQuestionsToShow();
	});
	
	function queryToShow(){
		
		$.post("${pageContext.request.contextPath}/question/queryQuestionsToShow",
			{
			paperId:sessionId,
			},
				function(data){
		       //alert(data);
		       $("#main-content-inner").empty().html(data);
				});
	}
</script>
</html>