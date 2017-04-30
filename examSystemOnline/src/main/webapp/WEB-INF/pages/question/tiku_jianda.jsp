<%@ page language="java" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<!doctype html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta charset="utf-8">
<title>题库管理-简答题</title>
<meta name="description" content="Static &amp; Dynamic Tables">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<link rel="stylesheet" href="../assets/css/bootstrap.css">
<link rel="stylesheet" href="../assets/css/font-awesome.css">
<link rel="stylesheet" href="../assets/css/ace-fonts.css">
<link rel="stylesheet" href="../assets/css/ace.css"
	class="ace-main-stylesheet" id="main-ace-style">
<link rel="stylesheet" href="../css/signin.css">
</head>
<body class="no-skin">
	<div id="navbar" class="navbar navbar-default">
		<div id="navbar-container" class="navbar-container">
			<button id="menu-toggler"
				class="navbar-toggle menu-toggler pull-left" type="button"
				data-target="#sidebar">
				<span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span>
				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<div class="navbar-header pull-left">
				<a class="navbar-brand" href="#"> <small> <!--<i class="fa fa-leaf"></i>-->
						<img src="../images/tb/kaoshi.png"
						style="width: 25px;height: 25px;"> 数据结构在线考试系统<span
						style="font-size: 12px">——教师端</span>
				</small>
				</a>
			</div>
			<div class="navbar-buttons navbar-header pull-right"
				role="navigation">
				<ul class="nav ace-nav">
					<li class="light-blue"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"> <img class="nav-user-photo"
							src="../assets/avatars/avatar2.png" alt="Jack's photo"> <span
							class="user-info"> <small>Welcome,</small> 王老师
						</span>
					</a></li>
					<li class="light-blue"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"> 退出 </a></li>
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
					<li class="open"><a href="#" class="dropdown-toggle"> <!--<i class="menu-icon fa fa-desktop"></i>-->
							<img src="../images/tb/tiku.png"
							style="width: 20px;height: 20px;">&nbsp; <span
							class="menu-text"> 题库管理 </span> <b class="arrow fa fa-angle-down"></b>
					</a>
						<ul class="submenu">
							<li class=""><a
								href="${pageContext.request.contextPath}/teacherChoice/findByChoicePage"
								class="open_li"> <i class="menu-icon fa fa-caret-right"></i>
									选择题
							</a> <b class="arrow"></b></li>
							<li class=""><a
								href="${pageContext.request.contextPath}/teacherChoice/findByDecidePage">
									<i class="menu-icon fa fa-caret-right"></i> 判断题
							</a> <b class="arrow"></b></li>
							<li class=""><a
								href="${pageContext.request.contextPath}/teacherChoice/findByBlankPage">
									<i class="menu-icon fa fa-caret-right"></i> 填空题
							</a> <b class="arrow"></b></li>
							<li class=""><a
								href="${pageContext.request.contextPath}/teacherChoice/findBySimplePage">
									<i class="menu-icon fa fa-caret-right"></i> 简答题
							</a> <b class="arrow"></b></li>
							<li class=""><a
								href="${pageContext.request.contextPath}/teacherChoice/findByDesignPage">
									<i class="menu-icon fa fa-caret-right"></i> 算法设计题
							</a> <b class="arrow"></b></li>
						</ul></li>
					<!--自动组卷-->
					<li class=""><a href="zizu.html"> <!--<i class="menu-icon fa fa-folder"></i>-->
							<img src="../images/tb/zidong.png"
							style="width: 20px;height: 20px;">&nbsp; <span
							class="menu-text"> 自动组卷 </span> <!--<b class="arrow fa fa-angle-down"></b>-->
					</a></li>
					<!--手工组卷-->
					<li class=""><a href="shouzu.html"> <!--<i class="menu-icon fa fa-edit"></i>-->
							<img src="../images/tb/shou.png"
							style="width: 20px;height: 20px;">&nbsp; <span
							class="menu-text"> 手工组卷 </span> <!--<b class="arrow fa fa-angle-down"></b>-->
					</a></li>
					<!--试卷管理-->
					<li class=""><a href="shijuanguanli.html"> <!--<i class="menu-icon fa fa-edit"></i>-->
							<img src="../images/tb/shijuan.png"
							style="width: 20px;height: 20px;">&nbsp; <span
							class="menu-text"> 试卷管理 </span> <!--<b class="arrow fa fa-angle-down"></b>-->
					</a></li>
					<!--试卷批改-->
					<li class=""><a href="pigai.html"> <!--<i class="menu-icon fa fa-edit"></i>-->
							<img src="../images/tb/pigai2.png"
							style="width: 20px; height: 20px;">&nbsp; <span
							class="menu-text"> 试卷批改 </span> <!--<b class="arrow fa fa-angle-down"></b>-->
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-content">
			<div class="main-content-inner">
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a
							href="public.html">首页</a></li>
						<li class="">题库管理</li>
						<li class="active">简答题</li>
					</ul>
				</div>
				<div class="page-content">
					<button class="add" onclick="$('#apple').show();"
						style="background-color: #2a91d8;color: #fff;height: 40px;outline: none;">添加简答题</button>
					<div class="bank" style="width:100%;height:auto;margin-top: 10px;">
						<div style="width:100%;height:auto;border: 1px #CCCCCC solid">


							<table id="dataPages">


							</table>


						</div>
					</div>
				</div>
				<div style="text-align: center">
					<ul id="pageLimit" class="pagination pagination-lg"></ul>
				</div>
			</div>
		</div>
	</div>

	<!--添加题的弹框-->
	<div class="popup app-popup" id="apple" style="display: none;">
		<div class="popup_card">
			<div class="popup_close">
				<div class="close_css"></div>
			</div>
			<div class="popup_sure">
				<div class="popup_title">添加简答题</div>
				<div class="popup_content">
					<form
						action="${pageContext.request.contextPath}/teacherChoice/increasePreserve"
						method="post">
						难度：<select name="questionDifficulty" id="simplesaveDifficulty">
							<option value="简单">简单</option>
							<option value="一般">一般</option>
							<option value="困难" selected>困难</option>
						</select> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 类型：章节<select
							name="questionChater" id="simplesaveChater">
							<option value="one" selected>一</option>
							<option value="two">二</option>
							<option value="three">三</option>
							<option value="four">四</option>
							<option value="five">五</option>
							<option value="six">六</option>
						</select> <br /> 题目(可点击下面按钮上传图片)：
						<textarea cols="65" rows="3" name="questionName"
							id="simplesaveName"></textarea>
						<input type="file" multiple name="questionPhoto"
							id="simplesavePhoto"> <br> 答案：
						<textarea cols="60" rows="2" name="questionAnswer"
							id="simplesaveAnswer"></textarea>
						<br>
					</form>
					<button id="submit" type="button" onclick="saveSimpleQuestion();"
						style="margin-left: 45%">提交</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="commonDataModal" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content" id="commondataModal"></div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>



</body>
<script type="text/javascript" src="../js/jquery.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/ace.js"></script>
<script src="../js/ace.sidebar.js"></script>
<script src="../js/uibind.js"></script>


<script src="../js/jquery-1.11.1.min.js"></script>
<!-- 分页插件使用 -->
<script src="../js/bootstrap-paginator.min.js"></script>
<!-- Bootstrap -->
<script src="../js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#submit").click(function() {
			$("#apple").hide();
		});
		$("#submit1").click(function() {
			$("#apple1").hide();
		});
	});

	var pageSizeTemp = ${pageSize};
	var startPageTemp = 1;
	$(document).ready(function() {
		startSimpleList();
	});

	function startSimpleList() {
		//copy 复制一份 post ajax 形式
		$
				.post(
						"${pageContext.request.contextPath}/teacherChoice/selectByAllSimple",
						{
							startPage : startPageTemp,
							pageSize : pageSizeTemp
						},
						function(data) {

							$("#dataPages").empty().append(data);
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
													"${pageContext.request.contextPath}/teacherChoice/selectByAllSimple",
													{
														startPage : page,
														pageSize : pageSizeTemp
													}, function(data) {
														$("#dataPages").empty()
																.append(data);
													});
								}
							};
							$('#pageLimit').bootstrapPaginator(options);

						});

	}
	function saveSimpleQuestion() {
		var questionDifficulty = $("#simplesaveDifficulty").val();
		var questionChater = $("#simplesaveChater").val();
		var questionName = $("#simplesaveName").val();
		var questionPhoto = $("#simplesavePhoto").val();
		var questionAnswer = $("#simplesaveAnswer").val();
		var questionType = 4;
		$
				.post(
						"${pageContext.request.contextPath}/teacherChoice/increaseDecide",
						{
							questionDifficulty : questionDifficulty,
							questionChater : questionChater,
							questionName : questionName,
							questionPhoto : questionPhoto,
							questionAnswer : questionAnswer,
							questionType : questionType
						}, function(data) {
							if (data == 1) {
								$("#apple").hide();
								startSimpleList();
							} else {
								alert("对不起 新增判断题失败！");
							}
						});
	}
	//更新管理信息----ajax 2
	function forUpdateSimple(questionId) {
		$('#commonDataModal').modal('show');
		$
				.post(
						"${pageContext.request.contextPath}/teacherChoice/findSimplebyId",
						{
							questionId : questionId
						}, function(data) {

							$("#commondataModal").empty().append(data);
						});

	}
	function updateSimple() {
		var questionDifficulty = $("#simpleUpdateDifficulty").val();
		var questionChater = $("#simpleUpdateChater").val();
		var questionId = $("#simpleUpdateId").val();
		var questionName = $("#simpleUpdateName").val();
		var questionPhoto = $("#simpleUpdatePhoto").val();
		var questionAnswer = $("#simpleUpdateAnswer").val();
		$
				.post(
						"${pageContext.request.contextPath}/teacherChoice/updateDecideSystem",
						{
							questionDifficulty : questionDifficulty,
							questionChater : questionChater,
							questionName : questionName,
							questionPhoto : questionPhoto,
							questionAnswer : questionAnswer,
							questionId : questionId
						}, function(data) {
							if (data == 1) {
								$('#commonDataModal').modal('hide');
								startSimpleList();
							} else {
								alert("对不起 修改判断题失败！");
							}
						});

	}
	//通过ajax post 删除用户管理员
	function deleteSimple(questionId) {
		$
				.post(
						"${pageContext.request.contextPath}/teacherChoice/deleteChoiceSystem",
						{
							questionId : questionId
						}, function(data) {
							if (data >= 1) {
								alert("恭喜你 删除成功");
								$("#" + questionId + "bkuser_delete").remove();
							} else {
								alert("对不起 ，本次操作失败！");
							}
						});

	}
</script>
</html>