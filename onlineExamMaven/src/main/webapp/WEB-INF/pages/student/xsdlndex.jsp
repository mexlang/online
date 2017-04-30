<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%  String path = request.getContextPath();
 request.setAttribute("student", path);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>数据结构考试系统在线考试学生端</title>
    <link rel="stylesheet" href="${student}/css/reset.css">
    <link rel="stylesheet" href="${student}/css/data.css">
    <link rel="stylesheet" href="${student}/css/index.css">
</head>
<body>
<header class="header">
    <div class="headerLeft">数据结构考试系统在线考试--学生端</div>
    <div class="headerRight">欢迎您：&nbsp;&nbsp;<sapn></sapn>
        <div class="back"><a><img src="${student}/images/st/back-icon.png">&nbsp;退出</a></div></div>
</header>
<div class="main">
    <ul class="mainLeft-tab">
        <li class="OAchild">
            <a href="#">
                <div class="toggle"><img src="${student}/images/st/jia.png" class="jian"></div>
                在线考试
            </a>
        </li>
        <li class="OAchild1 three" data-value="zxks"><a href="javascript:studnetGoExam();">我要考试</a></li>
        <li class="OAchild1 three" data-value="ksjl"><a href="#">考试记录</a></li>
        <li class="fuze">
            <a href="#">
                <div class="toggle"><img src="${student}/images/st/jia.png"></div>
                查看成绩
            </a>
        </li>
        <li class="three fuze1" data-value="historyTest"><a href="#">历史成绩</a></li>
        <li class="canyu">
            <a href="#">
                <div class="toggle"><img src="${student}/images/st/jia.png"></div>
                查看答案
            </a>
        </li>
        <li class="three canyu1" data-value="looktest"><a href="#">所有试卷答案查看</a></li>
        <li class="cjfx">
            <a href="#">
                <div class="toggle"><img src="${student}/images/st/jia.png"></div>
               成绩分析
            </a>
        </li>
        <li class="three cjfx1" data-value="testFx"><a href="#">成绩分析</a></li>
        <li class="myData">
            <a href="#">
                <div class="toggle"><img src="${student}/images/st/jia.png"></div>
                我的信息
            </a>
        </li>
        <li class="three myData1" data-value="personalData"><a href="#">个人资料</a></li>
        <li class="three myData1" data-value="setPersonal"><a href="#">修改信息</a></li>

    </ul>
    <div class="mainRight">
        <nav class="nav">
            <!--欢迎进入数据结构考试系统！-->
            当前位置：<a href="xsdIndex.html" style="color: #00A0E9">首页</a><span><a class="historyTitle"></a></span>
        </nav>
        
        
        
        
        <div class="main-content" id="studentBody">
            <div class="mainContent main-content1">
                考试管理
            </div>
            <div class="mainContent main-content2">
                在线练习
            </div>
            <div class="mainContent main-content3">
                个人资料
            </div>
            <div class="mainContent main-content4">

            </div>
        </div>
    </div>
</div>
<footer>

</footer>
<script src="${student}/js/jquery.min.js"></script>
<script src="${student}/js/select.js"></script>
<script src="${student}/js/index.js"></script>
</body>
</html>
<script type="text/javascript">
	function studnetGoExam(){
		
		$.post("${pageContext.request.contextPath}/studentExam/studentSelectType",
				
				function(data){
		
			$("#studentBody").empty().append(data);
		});
	}
	function studnetToExam(paperId) {
		$.post("${pageContext.request.contextPath}/studentExam/StudentSelectPage",
						{
							paperId : paperId
						}, function(data) {
							
							$("#studentBody").empty().append(data);
						});

	}
</script>