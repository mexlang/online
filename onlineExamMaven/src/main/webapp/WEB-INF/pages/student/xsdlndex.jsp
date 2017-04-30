<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	request.setAttribute("student", path);
%>

<html lang="en">
<head>
<meta charset="UTF-8">
<title>数据结构考试系统在线考试学生端</title>
<link rel="stylesheet" href="${student}/css/reset.css">
<link rel="stylesheet" href="${student}/css/data.css">
<!--<link rel="stylesheet" href="css/bootstrap.css">-->
<link rel="stylesheet" href="${student}/css/ace.css"
	class="ace-main-stylesheet" id="main-ace-style">
<link rel="stylesheet" href="${student}/css/index.css">
</head>
<body>
	<header class="header">
		<div class="headerLeft">数据结构考试系统在线考试--学生端</div>
		<div class="headerRight">
			欢迎您：&nbsp;&nbsp;
			<sapn></sapn>
			<div class="back">
				<a><img src="${student}/img/back-icon.png">&nbsp;&nbsp;退出</a>
			</div>
		</div>
	</header>
	<!--主体内容-->
	<div class="main-container" id="main-container">
		<!--左侧导航-->
		<div id="sidebar" class="sidebar responsive">
			<div class="sidebar-shortcuts" id="sidebar-shortcuts">
				<!--左侧分类导航栏-->
				<ul class="nav nav-list mainLeft-tab">
					<li class="OAchild"><a href="#"> <img
							src="${student}/img/text.png" style="width: 20px;height: 20px;">
							在线考试
					</a></li>
					<li class="OAchild1 three" data-value="zxks"><a
						href="javascript:studnetGoExam();">我要考试</a></li>
					
					<li class="fuze"><a href="#"> <img
							src="${student}/img/look1.png" style="width: 20px;height: 20px;">
							查看成绩
					</a></li>
					<li class="three fuze1" data-value="historyTest"><a
						href="javascript:studnetTestrecord();">历史成绩</a></li>
					<li class="canyu"><a href="#"> <img
							src="${student}/img/looktext.png"
							style="width: 20px;height: 20px;"> 查看答案
					</a></li>
					<li class="three canyu1" data-value="looktest"><a
						href="javascript:studnetToPaperanswer();">所有试卷答案查看</a></li>
					<li class="cjfx"><a href="#"> <img
							src="${student}/img/chengji.png"
							style="width: 20px;height: 20px;"> 成绩分析
					</a></li>
					<li class="three cjfx1" data-value="testFx"><a
						href="javascript:toperformance(); ">成绩分析</a></li>
					<li class="myData"><a href="#"> <img
							src="${student}/img/myinfo.png" style="width: 20px;height: 20px;">
							我的信息
					</a></li>
					<li class="three myData1" data-value="personalData"><a
						href="javascript:studnetInformation();">个人资料</a></li>
				</ul>
			</div>
		</div>
		<div class="main-content">
			<div class="main-content-inner">
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li style="float: left"><i
							class="ace-icon fa fa-home home-icon"></i> <a
							href="xsdIndex.html">首页</a></li>
						<li class="historyTitle" style="float: left"></li>
					</ul>
				</div>
				<div class="page-content" id="studentBody">欢迎进入数据结构考试系统-学生端</div>
			</div>
		</div>
	</div>
	<footer> </footer>
	<script src="${student}/js/jquery.min.js"></script>
	<script src="${student}/js/select.js"></script>
	<script src="${student}/js/index.js"></script>
	<!-- 分页插件使用 -->
	<script src="${student}/js/bootstrap-paginator.min.js"></script>
	<!-- Bootstrap -->
	<script src="${student}/js/bootstrap.min.js"></script>
</body>
</html>
<script type="text/javascript">
	function studnetGoExam() {

		$.post("${pageContext.request.contextPath}/studentExam/studentSelectType",

						function(data) {

							$("#studentBody").empty().append(data);
						});
	}
	function studnetToExam(paperId) {
		$.post("${pageContext.request.contextPath}/studentExam/testPaperShow",
				{
					paperId : paperId
				}, function(data) {

					$("#studentBody").empty().append(data);
				});

	}
	function studnetScore() {
		$.post("${pageContext.request.contextPath}/studentExam/testPaperShow",
				function(data) {
					$("#studentBody").empty().append(data);
				});
	}
	
	
	function studnetTestrecord(){
		$.post("${pageContext.request.contextPath}/studentPaper/stuentwriteRecording",
				function(data) {
					$("#studentBody").empty().append(data);
				});
	}
	//查看做过的试卷信息
	function studnetToPaperanswer(){
		$.post("${pageContext.request.contextPath}/studentPaper/stuentHasWrited",
				function(data) {
					$("#studentBody").empty().append(data);
				});
	}
	//查看当前试卷答案
	function paperShowAnswer(paperId){
		$.post("${pageContext.request.contextPath}/studentPaper/studnetToPaperanswer",
			{
			paperId:paperId
			},
				function(data) {
					$("#studentBody").empty().append(data);
				});
	}
	function studnetInformation(){
		$.post("${pageContext.request.contextPath}/studentPaper/studnetInformation",
			
				function(data) {
					$("#studentBody").empty().append(data);
				});
	}
	
	function toperformance(){
		$.post("${pageContext.request.contextPath}/studentPaper/toperformance",
				function(data) {
					$("#studentBody").empty().append(data);
				});
	}
	function studenttoScore(paperId){
		$.post("${pageContext.request.contextPath}/studentPaper/toOneperformance",
				{paperId:paperId},
				function(data) {
					$("#studentBody").empty().append(data);
				});
	}
	
</script>